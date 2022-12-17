import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/src/either.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/app/firestore_constants.dart';
import 'package:workout_buddy_finder/auth/data/model/model.dart';
import 'package:workout_buddy_finder/auth/domain/domain.dart';
import 'package:workout_buddy_finder/core/error/app_error.dart';

import 'package:firebase_auth/firebase_auth.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  bool get isSignedIn => FirebaseAuth.instance.currentUser != null;

  @override
  Future<Either<void, AppError>> loginWithGoogle(Position location) async {
    Either<void, AppError>? result;
    try {
      final userCredential = await _signInWithGoogle();
      final User? firebaseUser = userCredential.user;
      if (firebaseUser == null) {
        result = Left({});
      } else {
        final appUser = _createUserIfDoesNotExist(firebaseUser, location);
      }
    } on FirebaseAuthMultiFactorException catch (error) {
      result = Right(AppError(message: error.code));
    } catch (_) {
      result = Right(UnknownError());
    }

    return result!;
  }

  @override
  Stream<UserAuthState> getAuthStateStream() {
    return FirebaseAuth.instance.authStateChanges().map(
      (firebaseUser) {
        if (firebaseUser == null) {
          return UserAuthState.signedOut;
        }

        return UserAuthState.signedIn;
      },
    );
  }

  @override
  Stream<AppUser> getAppUserStream() {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    final usersDb = FirebaseFirestore.instance.collection(users);
    final userDoc = usersDb.doc(firebaseUser?.uid).snapshots();

    return userDoc.map(
      (doc) {
        final data = doc.data();
        if (data == null) {
          return AppUser.empty();
        }

        return AppUserModel.fromJson(data).toEntity();
      },
    );
  }

  Future<AppUser> _createUserIfDoesNotExist(
    User firebaseUser,
    Position location,
  ) async {
    final usersDb = FirebaseFirestore.instance.collection(users);
    final DocumentSnapshot<Map<String, dynamic>> userDoc =
        await usersDb.doc(firebaseUser.uid).get();
    final data = userDoc.data();

    if (userDoc.exists && data != null) {
      return AppUserModel.fromJson(data).toEntity();
    } else {
      final appUserModel = AppUserModel(
        userId: firebaseUser.uid,
        name: firebaseUser.displayName ?? '',
        email: firebaseUser.email ?? '',
        profilePicture: firebaseUser.photoURL ?? '',
        registered: firebaseUser.metadata.creationTime!.toUtc(),
        lat: location.latitude,
        long: location.longitude,
      );
      userDoc.reference.set(appUserModel.toJson());

      return appUserModel.toEntity();
    }
  }

  Future<UserCredential> _signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request.
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential.
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential.
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
