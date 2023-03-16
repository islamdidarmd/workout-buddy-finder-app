import 'package:either_dart/src/either.dart';
import 'package:workout_buddy_finder/core/error/app_error.dart';
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart';

class FakeSignOutUseCase implements SignOutUseCase {
  final AppError? error;

  const FakeSignOutUseCase(this.error);

  @override
  Future<Either<void, AppError>> execute() async {
    if (error != null) {
      return Right(UnknownError());
    }

    return Left(null);
  }
}
