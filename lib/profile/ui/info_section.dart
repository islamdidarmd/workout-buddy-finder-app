import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/auth/auth.dart';
import 'package:workout_buddy_finder/profile/ui/location_text.dart';
import 'package:workout_buddy_finder/profile/ui/profile_avatar.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    Key? key,
    required this.user,
  }) : super(key: key);

  final AppUser user;
  final double _padding = 16.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(_padding),
      height: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).splashColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileAvatar(
            user: user,
            size: 100,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.locationCrosshairs,
                    size: 12,
                  ),
                  SizedBox(width: 2),
                  LocationText(
                    lat: user.lat,
                    long: user.long,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
