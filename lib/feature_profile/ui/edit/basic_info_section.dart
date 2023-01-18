import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_profile/ui/edit/gender_edit_view.dart';
import 'package:workout_buddy_finder/feature_profile/ui/edit/name_edit_view.dart';

class BasicInfoSection extends StatelessWidget {
  const BasicInfoSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mediumBoldTitle(context, 'Basic Info'),
          const VerticalSpacing(spacing: 16),
          NameEditView(appUser: appUser),
          const VerticalSpacing(spacing: 16),
          GenderEditView(appUser: appUser),
        ],
      ),
    );
  }
}
