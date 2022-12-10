part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];

  const AuthEvent();
}

class AuthCheckAuthStateEvent extends AuthEvent {}

class AuthSignInWithGoogleEvent extends AuthEvent {}
