part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent{
  const factory AuthEvent.initial() = _InitialEvent;
  const factory AuthEvent.signInWithGoogle(Position location) = _SignInWithGoogleEvent;
  const factory AuthEvent.signOut() = _SignOutEvent;
}
