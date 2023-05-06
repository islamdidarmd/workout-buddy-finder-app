import 'package:flutter/material.dart';

import '../../../../core/model/models.dart';
import '../../../../core/ui/shared/content_card.dart';
import '../../../../core/ui/shared/vertical_spacing.dart';
import '../../../../core/ui/style/texts.dart';
import 'availability_edit_view.dart';
import 'nearby_distance_edit_view.dart';

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
