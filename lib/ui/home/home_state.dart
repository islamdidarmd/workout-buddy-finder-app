part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {
  final AppError error;

  HomeErrorState(this.error);
}

class HomeSuccessState extends HomeState {
  final List<Repository> repositories;

  HomeSuccessState(this.repositories);
}
