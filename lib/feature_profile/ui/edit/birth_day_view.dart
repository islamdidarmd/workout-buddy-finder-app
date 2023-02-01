import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';
import '../fomatters/datetime_formatter.dart';

class BirthDayView extends StatelessWidget {
  const BirthDayView({
    super.key,
    required this.appUser,
  });

  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    if (appUser.birthdate == null) {
      return lightBody(context, "No Set");
    }

    return lightBody(
      context,
      appUser.birthdate!.formatTo(birthDateFormat),
    );
  }
}
