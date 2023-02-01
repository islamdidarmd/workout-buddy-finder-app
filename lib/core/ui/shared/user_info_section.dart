import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core.dart';

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final double _padding = 16.0;
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(_padding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileAvatar(user: appUser, size: 100),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mediumBoldTitle(context, appUser.name),
                    const VerticalSpacing(spacing: 4),
                    UserAgeWithGenderView(appUser: appUser),
                    const VerticalSpacing(spacing: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.locationCrosshairs, size: 12),
                        SizedBox(width: 2),
                        LocationText(lat: appUser.lat, long: appUser.long),
                      ],
                    ),
                    UserLastSeenView(appUser: appUser),
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
