import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/app_error.dart';


@injectable
class SignOutUseCase {
  final FirebaseAuth firebaseAuth;

  const SignOutUseCase(this.firebaseAuth);

  Future<Either<void, AppError>> execute() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      return const Right(LogoutFailedError());
    }

    return const Left(null);
  }
}
