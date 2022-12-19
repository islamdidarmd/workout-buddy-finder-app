part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent{
  const factory ProfileEvent.getUserProfile() = _UserProfileEvent;
  const factory ProfileEvent.loadInterests(AppUser appUser) = _InterestsEvent;
  const factory ProfileEvent.addInterest(AppUser appUser, InterestViewModel interest) = _AddInterestEvent;
  const factory ProfileEvent.removeInterest(AppUser appUser, InterestViewModel interest) = _RemoveInterestEvent;
}
