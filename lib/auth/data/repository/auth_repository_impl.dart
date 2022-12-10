import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/src/either.dart';
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
  Future<Either<AppUser, AppError>> loginWithGoogle() async {
    Either<AppUser, AppError>? result;

    try {
      final userCredential = await _signInWithGoogle();
      final User? firebaseUser = userCredential.user;

      if (firebaseUser != null) {
        final AppUser appUser = await _getOrCreateUserById(firebaseUser);
        result = Left(appUser);
      } else {
        result = Right(UnknownError());
      }
    } on FirebaseAuthMultiFactorException catch (error) {
      result = Right(AppError(message: error.code));
    } catch (_) {
      result = Right(UnknownError());
    }

    return result!;
  }

  @override
  Future<Either<AppUser, AppError>> isLoggedIn() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;

    return Either.cond(
      firebaseUser == null,
      await _getOrCreateUserById(firebaseUser!),
      UserNotLoggedInError(),
    );
  }

  Future<AppUser> _getOrCreateUserById(User firebaseUser) async {
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
