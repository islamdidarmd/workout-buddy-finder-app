part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent{
  const factory ProfileEvent.getUserProfile() = _UserProfileEvent;
  const factory ProfileEvent.loadInterests() = _InterestsEvent;
}
