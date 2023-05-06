import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/model/models.dart';
import '../../../../core/ui/shared/content_card.dart';
import '../../../../core/ui/shared/vertical_spacing.dart';
import '../../../../core/ui/style/texts.dart';
import '../../../../di/service_locator.dart';
import '../bloc/activity_tracker_cubit.dart';
import 'activity_tracker_energy_burned_view.dart';

import 'activity_permission_required_view.dart';

class ActivityTrackerSection extends StatelessWidget {
  const ActivityTrackerSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ActivityTrackerCubit>(
      create: (_) => sl()..readHealthData(),
      child: BlocBuilder<ActivityTrackerCubit, ActivityTrackerState>(
        builder: (context, state) {
          return state.maybeWhen(
            noPermission: () => const ActivityPermissionRequiredView(),
            healthDataUpdated: (healthData) => ContentCard(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mediumBoldTitle(context, 'Energy Tracker'),
                  const VerticalSpacing(),
                  ActivityTrackerEnergyBurnedView(energyBurnedData: healthData),
                ],
              ),
            ),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
