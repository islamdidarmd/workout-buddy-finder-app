import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health/health.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_profile/ui/profile/activity_tracker_energy_burned_view.dart';

import 'activity_permission_required_view.dart';

class ActivityTrackerSection extends StatefulWidget {
  const ActivityTrackerSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  @override
  State<ActivityTrackerSection> createState() => _ActivityTrackerSectionState();
}

class _ActivityTrackerSectionState extends State<ActivityTrackerSection> {
  HealthFactory _health = HealthFactory();
  final _healthData = <HealthDataPoint>[];
  bool _hasPermission = false;

  @override
  void initState() {
    super.initState();
    _updatePermissionStatus();
  }

  Future<void> _updatePermissionStatus() async {
    final types = [
      HealthDataType.ACTIVE_ENERGY_BURNED,
    ];

    bool hasPermission = await _health.requestAuthorization(types);
    setState(() {
      _hasPermission = hasPermission;
    });
  }

  Future<void> _readHealthData() async {
    // Define the types to get.
    final types = [
      HealthDataType.ACTIVE_ENERGY_BURNED,
    ];

    var now = DateTime.now();
    // Fetch health data from the last 24 hours.
    try {
      List<HealthDataPoint> healthData = await _health.getHealthDataFromTypes(
        now.subtract(Duration(days: 1)),
        now,
        types,
      );
      setState(() {
        _healthData.clear();
        _healthData.addAll(healthData);
      });
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_hasPermission) {
      _readHealthData();
    }

    return ContentCard(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          mediumBoldTitle(context, 'Energy Tracker'),
          const VerticalSpacing(),
          if (_hasPermission) ...{
            ActivityTrackerEnergyBurnedView(energyBurnedData: _healthData),
          } else ...{
            ActivityPermissionRequiredView(
              onTap: () => _updatePermissionStatus(),
            ),
          },
        ],
      ),
    );
  }
}
