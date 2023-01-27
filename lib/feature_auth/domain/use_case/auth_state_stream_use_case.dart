import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../entity/user_auth_state.dart';

@singleton
@injectable
class AuthStateStreamUseCase {
  Stream<UserAuthState> call() {
    return FirebaseAuth.instance.authStateChanges().map(
      (firebaseUser) {
        if (firebaseUser == null) {
          return UserAuthState.signedOut;
        }

        return UserAuthState.signedIn;
      },
    );
  }
}
