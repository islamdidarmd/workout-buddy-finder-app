part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState{
 const factory AuthState.initial() = _InitialState;
 const factory AuthState.loading() = _LoadingState;
 const factory AuthState.signInFailure(AppError error) = _SignInFailureState;
 const factory AuthState.signedIn() = _SignedInState;
 const factory AuthState.signedOut() = _SignedOutState;
}