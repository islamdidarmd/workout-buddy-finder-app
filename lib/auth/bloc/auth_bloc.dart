import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState()) {
    on<AuthSignInWithGoogleEvent>((event, emit) async {
      emit(AuthLoadingState());
      await Future.delayed(Duration(seconds: 2));
      emit(AuthSignedInState());
    });
  }
}
