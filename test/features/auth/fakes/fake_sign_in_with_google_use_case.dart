import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:workout_buddy_finder/core/error/app_error.dart';
import 'package:workout_buddy_finder/features/auth/domain/use_case/create_new_user_use_case.dart';
import 'package:workout_buddy_finder/features/auth/domain/use_case/get_user_profile_from_id_use_case.dart';
import 'package:workout_buddy_finder/features/auth/domain/use_case/sign_in_with_google_use_case.dart';

import 'fake_create_new_user_use_case.dart';
import 'fake_get_user_profile_from_id_use_case.dart';

class FakeSignInWithGoogleUseCase implements SignInWithGoogleUseCase {
  final AppError? error;

  const FakeSignInWithGoogleUseCase(this.error);

  @override
  Future<Either<void, AppError>> execute(Position currentLocation) async {
    if (error != null) {
      return const Right(UnknownError());
    }

    return const Left(null);
  }

  @override
  CreateNewUserUseCase get createNewUserUseCase => FakeCreateNewUserUseCas();

  @override
  GetUserProfileFromIdUseCase get getUserProfileFromIdUseCase =>
      FakeGetUserProfileFromIdUseCase();

  @override
  // TODO: implement firebaseAuth
  FirebaseAuth get firebaseAuth => throw UnimplementedError();

  @override
  // TODO: implement firestore
  FirebaseFirestore get firestore => throw UnimplementedError();

  @override
  // TODO: implement googleSign
  GoogleSignIn get googleSign => throw UnimplementedError();
}
