part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];

  const AuthState();
}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthSignedInState extends AuthState {}

class AuthSignInFailureState extends AuthState {
  final AppError error;

  const AuthSignInFailureState({
    required this.error,
  });
}

class AuthSignedOutState extends AuthState {}
