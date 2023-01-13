import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/core.dart';
import 'location_text.dart';
import 'profile_avatar.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final double _padding = 16.0;
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: 120,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(_padding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileAvatar(
                user: appUser,
                size: 100,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    mediumTitle(context, appUser.name),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          FontAwesomeIcons.locationCrosshairs,
                          size: 12,
                        ),
                        SizedBox(width: 2),
                        LocationText(
                          lat: appUser.lat,
                          long: appUser.long,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
