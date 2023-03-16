import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'get_user_profile_from_id_use_case.dart';
import '../../../core/core.dart';
import 'create_new_user_use_case.dart';

@injectable
class SignInWithGoogleUseCase {
  final CreateNewUserUseCase createNewUserUseCase;
  final GetUserProfileFromIdUseCase getUserProfileFromIdUseCase;
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;
  final GoogleSignIn googleSign;

  const SignInWithGoogleUseCase({
    required this.createNewUserUseCase,
    required this.getUserProfileFromIdUseCase,
    required this.firebaseAuth,
    required this.firestore,
    required this.googleSign,
  });

  Future<Either<void, AppError>> execute(Position currentLocation) async {
    Either<void, AppError>? result;
    try {
      final userCredential = await _getCredentialsFromGoogle();
      final firebaseUser = userCredential.user;
      if (firebaseUser == null) {
        result = Left({});
      } else {
        final appUser = await _getUserProfile(
          firebaseUser: firebaseUser,
          currentLocation: currentLocation,
        );
        result = Left(appUser);
      }
    } on FirebaseAuthMultiFactorException catch (error) {
      result = Right(AppError(message: error.code));
    } catch (e) {
      result = Right(AppError(message: e.toString()));
    }

    return result;
  }

  Future<AppUser?> _getUserProfile({
    required User firebaseUser,
    required Position currentLocation,
  }) async {
    final appUser = await getUserProfileFromIdUseCase.execute(uid: firebaseUser.uid);
    if (appUser == null) {
      return await createNewUserUseCase.execute(
        firebaseUser: firebaseUser,
        currentLocation: currentLocation,
      );
    }

    return appUser;
  }

  Future<UserCredential> _getCredentialsFromGoogle() async {
    final GoogleSignInAccount? googleUser = await googleSign.signIn();

    // Obtain the auth details from the request.
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential.
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential.
    return await firebaseAuth.signInWithCredential(credential);
  }
}
