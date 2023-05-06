import 'package:flutter_test/flutter_test.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:workout_buddy_finder/features/auth/ui/bloc/auth_cubit.dart';

import '../../fakes/fake_position.dart';
import 'fakes/fake_sign_in_with_google_use_case.dart';
import 'fakes/fake_sign_out_use_case.dart';

main() {
  const unknownError = UnknownError();

  blocTest<AuthCubit, AuthState>(
    'Emits [] state when created',
    build: () => AuthCubit(
      signInWithGoogleUseCase: const FakeSignInWithGoogleUseCase(null),
      signOutUseCase: const FakeSignOutUseCase(null),
    ),
    act: (bloc) {},
    expect: () => <AuthState>[],
  );

  blocTest<AuthCubit, AuthState>(
    'Emits [] when login success',
    build: () => AuthCubit(
      signInWithGoogleUseCase: const FakeSignInWithGoogleUseCase(null),
      signOutUseCase: const FakeSignOutUseCase(null),
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
      signInWithGoogleUseCase: const FakeSignInWithGoogleUseCase(unknownError),
      signOutUseCase: const FakeSignOutUseCase(null),
    ),
    act: (bloc) {
      bloc.signInWithGoogle(FakePosition());
    },
    wait: const Duration(milliseconds: 300),
    expect: () => [const AuthState.signInFailure(unknownError)],
  );

  group('Signout tests', () {
    blocTest(
      'Emits Signout success',
      build: () => AuthCubit(
          signInWithGoogleUseCase: const FakeSignInWithGoogleUseCase(unknownError),
          signOutUseCase: const FakeSignOutUseCase(null)),
      act: (bloc) => bloc.signOut(),
      wait: const Duration(milliseconds: 300),
      expect: () => [const AuthState.signedOut()],
    );

    blocTest(
      'Emits Signout Failure',
      build: () => AuthCubit(
          signInWithGoogleUseCase: const FakeSignInWithGoogleUseCase(unknownError),
          signOutUseCase: const FakeSignOutUseCase(unknownError)),
      act: (bloc) => bloc.signOut(),
      wait: const Duration(milliseconds: 300),
      expect: () => [const AuthState.signOutFailure(unknownError)],
    );
  });
}
