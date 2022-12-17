import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../domain.dart';

abstract class AuthRepository {
  bool get isSignedIn;
  Future<Either<void, AppError>> loginWithGoogle(Position location);
  Stream<UserAuthState> getAuthStateStream();
  Stream<AppUser> getAppUserStream();
}
