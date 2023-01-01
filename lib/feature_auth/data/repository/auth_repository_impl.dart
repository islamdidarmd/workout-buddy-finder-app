import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/src/either.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/feature_location/location.dart';
import '../../../feature_profile/data/model/model.dart';
import '../../../core/core.dart';
import '../../../core/firestore_constants.dart';
import '../model/model.dart';
import '../../../feature_auth/domain/domain.dart';

import 'package:dart_geohash/dart_geohash.dart';
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
        result = Left(appUser);
      }
    } on FirebaseAuthMultiFactorException catch (error) {
      result = Right(AppError(message: error.code));
    } catch (_) {
      result = Right(UnknownError());
    }

    return result;
  }

  @override
  Future<Either<void, AppError>> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      return Right(LogoutFailedError());
    }

    return Left(null);
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

    return userDoc.asyncMap(
      (doc) async {
        final data = doc.data();
        if (data == null) {
          return AppUser.empty();
        }
        debugPrint("User profile update received");
        final appUserModel = AppUserModel.fromJson(data);

        return AppUserModel.fromJson(data)
            .toEntity(await _getUserInterestList(appUserModel));
      },
    );
  }

  Future<List<Interest>> _getUserInterestList(AppUserModel appUserModel) async {
    final interestCollection = FirebaseFirestore.instance.collection(interests);
    final interestList = <Interest>[];

    for (String e in appUserModel.interestsList) {
      final snapshot = await interestCollection.doc(e).get();
      final data = snapshot.data();
      if (data != null) {
        final model = InterestModel.fromJson(data);
        interestList.add(model.toEntity());
      }
    }

    return interestList;
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
      final appUserModel = AppUserModel.fromJson(data);

      return appUserModel.toEntity(await _getUserInterestList(appUserModel));
    } else {
      final geoHash = getGeoHash(
        latitude: location.latitude,
        longitude: location.longitude,
      );
      final appUserModel = AppUserModel(
        userId: firebaseUser.uid,
        name: firebaseUser.displayName ?? '',
        email: firebaseUser.email ?? '',
        profilePicture: firebaseUser.photoURL ?? '',
        registered: firebaseUser.metadata.creationTime!.toUtc(),
        lat: location.latitude,
        long: location.longitude,
        geoHash: geoHash,
      );
      userDoc.reference.set(appUserModel.toJson());

      return appUserModel.toEntity([]);
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
