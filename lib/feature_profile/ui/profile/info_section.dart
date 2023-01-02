import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/core.dart';
import 'location_text.dart';
import '../widgets/profile_avatar.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({Key? key}) : super(key: key);
  final double _padding = 16.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final appUser = context.read<AppUser>();

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    appUser.name,
                    style: textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
