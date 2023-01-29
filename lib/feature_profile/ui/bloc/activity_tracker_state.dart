part of 'activity_tracker_cubit.dart';

@freezed
class ActivityTrackerState with _$ActivityTrackerState {
  const factory ActivityTrackerState.initial() = _InitialState;

  const factory ActivityTrackerState.healthDataUpdated(
    List<HealthDataPoint> data,
  ) = _HealthDataUpdatedState;

  const factory ActivityTrackerState.noPermission() = _HealthPermisisonRequired;
}
