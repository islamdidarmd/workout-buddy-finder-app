import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

class UserPreferences extends StatelessWidget {
  const UserPreferences({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        mediumBoldTitle(context, 'Preferences'),
        const VerticalSpacing(spacing: 8),
        UserAvailability(appUser: appUser),
        const VerticalSpacing(spacing: 16),
        UserNearbyDistance(appUser: appUser),
      ]),
    );
  }
}
