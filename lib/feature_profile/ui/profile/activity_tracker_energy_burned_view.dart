import 'package:flutter/material.dart';
import 'package:health/health.dart';
import '../../../core/core.dart';

class ActivityTrackerEnergyBurnedView extends StatelessWidget {
  const ActivityTrackerEnergyBurnedView({
    Key? key,
    required this.energyBurnedData,
  }) : super(key: key);

  final List<HealthDataPoint> energyBurnedData;

  @override
  Widget build(BuildContext context) {
    if (energyBurnedData.isEmpty) {
      return lightBody(context, 'Data unavailable');
    }
    final total = energyBurnedData
        .map((e) => double.parse(e.value.toString()))
        .reduce((value, element) => value + element);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        lightBody(context, '$total/kCal'),
        const VerticalSpacing(spacing: 2),
        caption(context, 'Energy burned in last 24 Hrs'),
      ],
    );
  }
}
