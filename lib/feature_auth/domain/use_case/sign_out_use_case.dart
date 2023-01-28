import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';

@injectable
class SignOutUseCase {
  const SignOutUseCase();

  Future<Either<void, AppError>> call() async {
    try {
      final result = await FirebaseAuth.instance.signOut();
    } catch (e) {
      return Right(LogoutFailedError());
    }

    return Left(null);
  }
}
