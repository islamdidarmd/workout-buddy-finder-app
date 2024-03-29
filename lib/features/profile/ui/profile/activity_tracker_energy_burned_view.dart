import 'package:flutter/material.dart';
import 'package:health/health.dart';

import '../../../../core/ui/shared/vertical_spacing.dart';
import '../../../../core/ui/style/texts.dart';

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
        lightBody(context, '${total.toStringAsFixed(2)}/kCal'),
        const VerticalSpacing(spacing: 2),
        caption(context, 'Energy burned in last 24 Hrs'),
      ],
    );
  }
}
