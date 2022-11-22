import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:workout_buddy_finder/domain/domain.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final FindRepoByKeyUseCase findRepoByKeyUseCase;

  HomeCubit(this.findRepoByKeyUseCase) : super(HomeInitial());

  void search(String keyword) async {
    emit(HomeLoadingState());
    final result = await findRepoByKeyUseCase(keyword);
    result.fold(
      (error) => {
        emit(HomeErrorState(error)),
      },
      (repositories) => {
        emit(HomeSuccessState(repositories)),
      },
    );
  }
}
