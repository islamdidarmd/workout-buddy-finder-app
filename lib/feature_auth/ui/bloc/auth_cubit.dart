import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../../feature_auth.dart';
import '../../../core/core.dart';

part 'auth_cubit.freezed.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  final SignOutUseCase signOutUseCase;

  AuthCubit({
    required this.signInWithGoogleUseCase,
    required this.signOutUseCase,
  }) : super(const AuthState.initial());

  Future<void> signInWithGoogle(Position location) async {
    final result = await signInWithGoogleUseCase.execute(location);
    result.fold(
      (success) => null,
      (error) => emit(
        AuthState.signInFailure(error),
      ),
    );
  }

  Future<void> signOut() async {
    final result = await signOutUseCase.execute();
    result.fold(
      (success) => emit(const AuthState.signedOut()),
      (error) => emit(
        AuthState.signOutFailure(error),
      ),
    );
  }
}
