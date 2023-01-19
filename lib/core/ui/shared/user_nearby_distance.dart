import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

class UserNearbyDistance extends StatelessWidget {
  const UserNearbyDistance({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        caption(context, 'Show me people in'),
        const VerticalSpacing(spacing: 4),
        mediumBody(
          context,
          '${appUser.nearbyDistance} Km',
        ),
      ],
    );
  }
}
