import 'package:flutter_test/flutter_test.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart';
import 'package:bloc_test/bloc_test.dart';

import '../fakes/fake_position.dart';
import 'fakes/fake_sign_in_with_google_use_case.dart';
import 'fakes/fake_sign_out_use_case.dart';

main() {
  final unknownError = UnknownError();

  blocTest<AuthCubit, AuthState>(
    'Emits [] state when created',
    build: () => AuthCubit(
      signInWithGoogleUseCase: FakeSignInWithGoogleUseCase(null),
      signOutUseCase: FakeSignOutUseCase(null),
    ),
    act: (bloc) {},
    expect: () => <AuthState>[],
  );

  blocTest<AuthCubit, AuthState>(
    'Emits [] when login success',
    build: () => AuthCubit(
      signInWithGoogleUseCase: FakeSignInWithGoogleUseCase(null),
      signOutUseCase: FakeSignOutUseCase(null),
    ),
    act: (bloc) {
      bloc.signInWithGoogle(FakePosition());
    },
    wait: const Duration(milliseconds: 300),
    expect: () => <AuthState>[],
  );

  blocTest<AuthCubit, AuthState>(
    'Emits signInFailure State when login fails',
    build: () => AuthCubit(
      signInWithGoogleUseCase: FakeSignInWithGoogleUseCase(unknownError),
      signOutUseCase: FakeSignOutUseCase(null),
    ),
    act: (bloc) {
      bloc.signInWithGoogle(FakePosition());
    },
    wait: const Duration(milliseconds: 300),
    expect: () => [AuthState.signInFailure(unknownError)],
  );

  group('Signout tests', () {
    blocTest(
      'Emits Signout success',
      build: () => AuthCubit(
          signInWithGoogleUseCase: FakeSignInWithGoogleUseCase(unknownError),
          signOutUseCase: FakeSignOutUseCase(null)),
      act: (bloc) => bloc.signOut(),
      wait: const Duration(milliseconds: 300),
      expect: () => [AuthState.signedOut()],
    );

    blocTest(
      'Emits Signout Failure',
      build: () => AuthCubit(
          signInWithGoogleUseCase: FakeSignInWithGoogleUseCase(unknownError),
          signOutUseCase: FakeSignOutUseCase(unknownError)),
      act: (bloc) => bloc.signOut(),
      wait: const Duration(milliseconds: 300),
      expect: () => [AuthState.signOutFailure(unknownError)],
    );
  });
}
