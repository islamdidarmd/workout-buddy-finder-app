import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/activity_tracker_cubit.dart';

class ActivityPermissionRequiredView extends StatelessWidget {
  const ActivityPermissionRequiredView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        child: Text(
          'Permission to Read Activity Data is required. Tap to approve permission.',
        ),
      ),
      onTap: () => context.read<ActivityTrackerCubit>().readHealthData(),
    );
  }
}
