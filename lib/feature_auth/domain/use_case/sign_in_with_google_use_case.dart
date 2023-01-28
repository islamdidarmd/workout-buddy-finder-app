import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/feature_auth/domain/use_case/update_last_seen_use_case.dart';
import '../../../core/core.dart';
import 'create_new_user_use_case.dart';

@injectable
class SignInWithGoogleUseCase {
  final CreateNewUserUseCase createNewUserUseCase;

  const SignInWithGoogleUseCase({
    required this.createNewUserUseCase,
  });

  Future<Either<void, AppError>> call(Position currentLocation) async {
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
    final _userProfileQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(firebaseUser.uid)
        .withConverter(
          fromFirestore: (snapshot, _) => AppUser.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    final profileSnapshot = await _userProfileQuery.get();
    if (!profileSnapshot.exists) {
      return await createNewUserUseCase.call(
        firebaseUser: firebaseUser,
        currentLocation: currentLocation,
      );
    }

    return profileSnapshot.data()!;
  }

  Future<UserCredential> _getCredentialsFromGoogle() async {
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
