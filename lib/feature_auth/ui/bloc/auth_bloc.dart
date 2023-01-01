import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../../../feature_auth/domain/domain.dart';
import '../../../core/core.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  bool get isSignedIn => authRepository.isSignedIn;

  Stream<AppUser> get appUserStream => authRepository.getAppUserStream();

  AuthBloc({required this.authRepository}) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      final result = await event.when(
        initial: () => _listenAuthState(emit),
        signInWithGoogle: (location) => _signInWithGoogle(location, emit),
        signOut: () async {
          final result = await authRepository.signOut();
        },
      );
    });
  }

  Future<void> _listenAuthState(Emitter emit) async {
    await emit.forEach(
      authRepository.getAuthStateStream(),
      onData: (userAuthState) {
        if (userAuthState == UserAuthState.signedIn) {
          return AuthState.signedIn();
        } else if (userAuthState == UserAuthState.signedOut) {
          return AuthState.signedOut();
        }

        return AuthState.loading();
      },
    );
  }

  Future<void> _signInWithGoogle(Position location, Emitter _) async {
    final result = await authRepository.loginWithGoogle(location);
  }
}
