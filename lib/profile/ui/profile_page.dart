import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/auth/auth.dart';
import 'package:workout_buddy_finder/profile/ui/profile_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final authBloc = context.read<AuthBloc>();

    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  ProfileAvatar(),
                  const SizedBox(height: 8),
                  Text(
                    authBloc.appUser.name,
                    style: textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Dhaka, Bangladesh',
                    style: textTheme.caption,
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 2),
                        child: Chip(
                          avatar: Icon(FontAwesomeIcons.personSwimming),
                          label: Text('Swimming'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 2),
                        child: Chip(
                            avatar: Icon(FontAwesomeIcons.personRunning),
                            label: Text('Running')),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 2),
                        child: Chip(
                            avatar: Icon(FontAwesomeIcons.personWalking),
                            label: Text('Walking')),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 2),
                        child: Chip(
                            avatar: Icon(FontAwesomeIcons.personBiking),
                            label: Text('Cycling')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton(
                onPressed: () => {},
                child: Icon(FontAwesomeIcons.penToSquare),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
