import 'package:either_dart/either.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/auth/domain/domain.dart';
import 'package:workout_buddy_finder/core/core.dart';

@injectable
class LoginWithGoogleUseCase {
  final AuthRepository authRepository;

  const LoginWithGoogleUseCase({
    required this.authRepository,
  });

  Future<Either<AppUser, AppError>> call(Position location) {
    return authRepository.loginWithGoogle(location);
  }
}
