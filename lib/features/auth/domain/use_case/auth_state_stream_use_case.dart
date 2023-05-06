import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../entity/user_auth_state.dart';
import 'update_last_seen_use_case.dart';

@injectable
class AuthStateStreamUseCase {
  final UpdateLastSeenUseCase updateLastSeenUseCase;
  final FirebaseAuth firebaseAuth;

  const AuthStateStreamUseCase({
    required this.updateLastSeenUseCase,
    required this.firebaseAuth,
  });

  Stream<UserAuthState> execute() {
    return firebaseAuth.authStateChanges().map(
      (firebaseUser) {
        if (firebaseUser == null) {
          return UserAuthState.signedOut;
        }
        updateLastSeenUseCase(userId: firebaseUser.uid);

        return UserAuthState.signedIn;
      },
    );
  }
}
