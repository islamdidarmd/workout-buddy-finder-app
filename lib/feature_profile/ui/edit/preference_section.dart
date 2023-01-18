import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_profile/ui/edit/availability_edit_view.dart';
import 'package:workout_buddy_finder/feature_profile/ui/edit/nearby_distance_edit_view.dart';

class PreferenceSection extends StatelessWidget {
  const PreferenceSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mediumBoldTitle(context, 'Preferences'),
          const VerticalSpacing(spacing: 16),
          AvailabilityEditView(appUser: appUser),
          const VerticalSpacing(spacing: 16),
          NearbyDistanceEditView(appUser: appUser),
        ],
      ),
    );
  }
}
