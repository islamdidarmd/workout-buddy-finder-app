part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.interestsLoadedState(List<Interest> interestList) = _InterestLoaded;
  const factory ProfileState.error(AppError error) = _Error;
}
