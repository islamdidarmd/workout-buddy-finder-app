import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/auth/domain/domain.dart';
import 'package:workout_buddy_finder/core/core.dart';

@injectable
class IsLoggedInUseCase {
  final AuthRepository authRepository;

  const IsLoggedInUseCase({
    required this.authRepository,
  });

  Future<Either<AppUser, AppError>> call() {
    return authRepository.isLoggedIn();
  }
}