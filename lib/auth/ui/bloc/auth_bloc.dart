import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/auth/domain/domain.dart';
import 'package:workout_buddy_finder/core/core.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginWithGoogleUseCase loginWithGoogleUseCase;
  final IsLoggedInUseCase isLoggedInUseCase;

  AppUser? _appUser;

  AppUser? get appUser => _appUser;

  AuthBloc({
    required this.loginWithGoogleUseCase,
    required this.isLoggedInUseCase,
  }) : super(AuthInitialState()) {
    on<AuthSignInWithGoogleEvent>((event, emit) async {
      emit(AuthLoadingState());
      final Either<AppUser, AppError> result = await loginWithGoogleUseCase();
      result.fold(
        (user) => emit(AuthSignedInState()),
        (error) => emit(AuthSignInFailureState(error: error)),
      );
    });

    on<AuthCheckAuthStateEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result = await isLoggedInUseCase();
      result.fold(
        (user) => emit(AuthSignedInState()),
        (error) => emit(AuthSignedOutState()),
      );
    });
  }
}
