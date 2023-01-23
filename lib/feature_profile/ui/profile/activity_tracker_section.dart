import 'dart:async';
import 'dart:io';

import 'package:activity_recognition_flutter/activity_recognition_flutter.dart';
import 'package:flutter/material.dart';
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
  StreamSubscription<ActivityEvent>? activityStreamSubscription;
  ActivityRecognition activityRecognition = ActivityRecognition();

  String activityName = '';

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    if (Platform.isAndroid) {
      if (await Permission.activityRecognition.request().isGranted) {
        _startTracking();
      }
    } else {
      // on iOS, no permission is required
      _startTracking();
    }
  }

  void _startTracking() {
    activityStreamSubscription = activityRecognition
        .activityStream(runForegroundService: true)
        .listen((activityEvent) {
      setState(() {
        activityName =
            '${activityEvent.typeString} with ${activityEvent.confidence}% confidence';
      });
    }, onError: (error) {
      debugPrint(error.toString());
    });
  }

  @override
  void dispose() {
    activityStreamSubscription?.cancel();
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
          mediumBody(context, activityName),
        ],
      ),
    );
  }
}
