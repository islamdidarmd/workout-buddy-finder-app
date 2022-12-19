import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/core/core.dart';

class InterestSection extends StatelessWidget {
  const InterestSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

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
