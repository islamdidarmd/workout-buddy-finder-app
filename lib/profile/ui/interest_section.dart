import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/auth/auth.dart';

class InterestSection extends StatelessWidget {
  const InterestSection({
    Key? key,
    required this.user,
  }) : super(key: key);
  final AppUser user;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Interests',
                style: textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Wrap(
                children: [
                  Chip(
                    avatar: Icon(FontAwesomeIcons.personSwimming),
                    label: Text('Swimming'),
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
