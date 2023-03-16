import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';
import 'package:injectable/injectable.dart';

part 'activity_tracker_state.dart';

part 'activity_tracker_cubit.freezed.dart';

@injectable
class ActivityTrackerCubit extends Cubit<ActivityTrackerState> {
  final HealthFactory _health = HealthFactory();

  ActivityTrackerCubit() : super(const ActivityTrackerState.initial());

  Future<void> readHealthData() async {
    // Define the types to get.
    final types = [
      HealthDataType.ACTIVE_ENERGY_BURNED,
    ];
    final hasPermission = await _requestPermission(types);
    if (!hasPermission) {
      emit(const ActivityTrackerState.noPermission());

      return;
    }

    final now = DateTime.now();
    // Fetch health data from the last 24 hours.
    try {
      List<HealthDataPoint> healthData = await _health.getHealthDataFromTypes(
        now.subtract(const Duration(days: 1)),
        now,
        types,
      );
      emit(ActivityTrackerState.healthDataUpdated(healthData));
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<bool> _requestPermission(List<HealthDataType> types) async {
    return await _health.requestAuthorization(types);
  }
}
