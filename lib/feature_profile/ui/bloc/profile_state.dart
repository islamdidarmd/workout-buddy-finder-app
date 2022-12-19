part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _InitialState;
  const factory ProfileState.loading() = _LoadingState;
  const factory ProfileState.interestsLoaded(List<InterestViewModel> interestList) = _InterestLoadedState;
  const factory ProfileState.error(AppError error) = _ErrorState;
}
