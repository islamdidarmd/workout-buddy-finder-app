import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core.dart';
import '../../../feature_profile/ui/widgets/profile_avatar.dart';

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final double _padding = 16.0;
  final AppUser appUser;

  int _calculateAgeFromBirthDay(DateTime birthday) {
    final diff = DateTime.now().difference(birthday).inDays;
    final age = diff / 365;

    return age.toInt();
  }

  String _mapGender(String genderEnum) {
    if (genderEnum == "male") {
      return "Male";
    } else if (genderEnum == "female") {
      return "Female";
    }

    return "Other";
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(_padding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
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
                    mediumBoldTitle(context, appUser.name),
                    const VerticalSpacing(spacing: 4),
                    lightBody(
                      context,
                      '${_calculateAgeFromBirthDay(appUser.birthdate)}, ${_mapGender(appUser.gender)}',
                    ),
                    const VerticalSpacing(spacing: 4),
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
