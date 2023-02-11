import 'package:either_dart/src/either.dart';
import 'package:workout_buddy_finder/core/error/app_error.dart';
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart';

class FakeSignOutUseCase implements SignOutUseCase {
  @override
  Future<Either<void, AppError>> execute() {
    return Future.value(null);
  }
}
