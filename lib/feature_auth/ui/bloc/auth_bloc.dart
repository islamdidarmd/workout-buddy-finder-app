import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/feature_push/domain/push_repository.dart';
import '../../../feature_auth/domain/domain.dart';
import '../../../core/core.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final PushRepository pushRepository;

  Stream<AppUser> get appUserStream => authRepository.getAppUserStream();

  AuthBloc({
    required this.authRepository,
    required this.pushRepository,
  }) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      final result = await event.when(
        initial: () {
          return _listenAuthState(emit);
        },
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
          pushRepository.uploadDeviceToken();

          return AuthState.signedIn();
        } else if (userAuthState == UserAuthState.signedOut) {
          return AuthState.signedOut();
        }

        return AuthState.loading();
      },
    );
  }

  Future<void> _signInWithGoogle(Position location, Emitter emit) async {
    final result = await authRepository.loginWithGoogle(location);
    result.fold(
        (success) => null, (error) => emit(AuthState.signInFailure(error)));
  }
}
