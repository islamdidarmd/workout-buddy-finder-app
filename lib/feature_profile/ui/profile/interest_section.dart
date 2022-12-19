import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart';

import '../../../feature_auth/domain/domain.dart';

class InterestSection extends StatelessWidget {
  const InterestSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumBoldTitle(context, 'Interests'),
              const SizedBox(height: 8),
              Wrap(
                children: appUser.interestList.map((interest) {
                  return Chip(
                    avatar: CircleAvatar(
                      foregroundImage: Image.network(interest.icon).image,
                      radius: 12,
                    ),
                    label: Text(interest.name),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
