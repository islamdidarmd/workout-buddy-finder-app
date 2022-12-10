import 'package:either_dart/either.dart';
import 'package:geolocator/geolocator.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../domain.dart';

abstract class AuthRepository {
  Future<Either<AppUser, AppError>> loginWithGoogle(Position location);
  Future<Either<AppUser, AppError>> isLoggedIn();
}
