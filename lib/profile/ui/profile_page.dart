import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/profile/ui/profile_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ProfileAvatar(),
            const SizedBox(height: 8),
            Text(
              'Md Didarul Islam',
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
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                  child: RawChip(label: Text('Swimming')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
                  child: RawChip(label: Text('Running')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                  child: RawChip(label: Text('Walking')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                  child: RawChip(label: Text('Cycling')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
