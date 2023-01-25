import 'package:either_dart/either.dart';
import 'package:geolocator/geolocator.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../domain.dart';

abstract class AuthRepository {
  Future<Either<void, AppError>> loginWithGoogle(Position location);
  Future<Either<void, AppError>> signOut();
  Stream<UserAuthState> getAuthStateStream();
  Stream<AppUser> getAppUserStream();
}
