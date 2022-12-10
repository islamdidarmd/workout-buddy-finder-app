part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];

  const AuthEvent();
}

class AuthCheckAuthStateEvent extends AuthEvent {}

class AuthSignInWithGoogleEvent extends AuthEvent {
  final Position location;

  @override
  List<Object?> get props => [location];

  const AuthSignInWithGoogleEvent({
    required this.location,
  });
}
