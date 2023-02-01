import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

class UserAvailability extends StatelessWidget {
  const UserAvailability({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  String _mapAvailability(String availability) {
    if (availability == "daily1hr") {
      return "Daily 1 Hr";
    } else if (availability == "daily2hr") {
      return "Daily 2 Hr";
    } else if (availability == "daily3hr") {
      return "Daily 3 Hr";
    }

    return "Not Set";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        caption(context, 'Availability'),
        const VerticalSpacing(spacing: 4),
        lightBody(
          context,
          _mapAvailability(appUser.availability),
        ),
      ],
    );
  }
}
