import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:workout_buddy_finder/core/core.dart';

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

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    // define the types to get
    var types = [
      HealthDataType.ACTIVE_ENERGY_BURNED,
    ];

    // Requesting access to the data types before reading them.
    bool requested = await _health.requestAuthorization(types);
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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mediumBoldTitle(context, 'Activity Tracker'),
          const VerticalSpacing(),
          Expanded(
            child: SizedBox(
              height: 300,
              child: ListView.separated(
                itemBuilder: (_, index) {
                  final dataPoint = _healthData[index];

                  return Card(
                    child: ListTile(
                      title: Text(
                          '${dataPoint.typeString} (${dataPoint.value}/${dataPoint.unitString})'),
                      subtitle: Text(
                          '${dataPoint.dateFrom.toLocal().toString()} - ${dataPoint.dateTo.toLocal().toString()}'),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: _healthData.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
