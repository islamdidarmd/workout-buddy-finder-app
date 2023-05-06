import 'package:flutter/material.dart';

import '../../../../core/model/models.dart';
import '../../../../core/ui/shared/content_card.dart';
import '../../../../core/ui/shared/vertical_spacing.dart';
import '../../../../core/ui/style/texts.dart';
import 'age_edit_view.dart';
import 'gender_edit_view.dart';
import 'location_update_view.dart';
import 'name_edit_view.dart';

class BasicInfoSection extends StatelessWidget {
  const BasicInfoSection({Key? key, required this.appUser}) : super(key: key);
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
          const VerticalSpacing(spacing: 16),
          AgeEditView(appUser: appUser),
          const VerticalSpacing(spacing: 16),
          LocationUpdateView(appUser: appUser),
        ],
      ),
    );
  }
}
