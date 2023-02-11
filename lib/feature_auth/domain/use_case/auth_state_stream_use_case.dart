import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../entity/user_auth_state.dart';
import 'update_last_seen_use_case.dart';

@injectable
class AuthStateStreamUseCase {
  final UpdateLastSeenUseCase updateLastSeenUseCase;

  const AuthStateStreamUseCase({
    required this.updateLastSeenUseCase,
  });

  Stream<UserAuthState> execute() {
    return FirebaseAuth.instance.authStateChanges().map(
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
