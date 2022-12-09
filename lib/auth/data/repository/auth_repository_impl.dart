import 'package:either_dart/src/either.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/auth/domain/domain.dart';
import 'package:workout_buddy_finder/core/error/app_error.dart';

import 'package:firebase_auth/firebase_auth.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<AppUser, AppError>> loginWithGoogle() async {
    Either<AppUser, AppError>? result;

    try {
      final userCredential = await _signInWithGoogle();
      if (userCredential.user == null) {
        result = Right(UnknownError());
      } else {
        final User firebaseUser = userCredential.user!;
        final AppUser appUser = AppUser(userId: firebaseUser.uid);
        result = Left(appUser);
      }
    } on FirebaseAuthMultiFactorException catch (error) {
      result = Right(AppError(message: error.code));
    } catch (_) {
      result = Right(UnknownError());
    }

    return result!;
  }

  Future<UserCredential> _signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request.
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential.
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential.
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
