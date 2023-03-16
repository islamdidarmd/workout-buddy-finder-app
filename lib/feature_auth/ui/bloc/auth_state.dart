part of 'auth_cubit.dart';

@freezed
/// ignore_for_file: avoid-dynamic
class AuthState with _$AuthState{
 const factory AuthState.initial() = _InitialState;
 const factory AuthState.loading() = _LoadingState;
 const factory AuthState.signInFailure(AppError error) = _SignInFailureState;
 const factory AuthState.signOutFailure(AppError error) = _SignOutFailureState;
 const factory AuthState.signedIn() = _SignedInState;
 const factory AuthState.signedOut() = _SignedOutState;
}