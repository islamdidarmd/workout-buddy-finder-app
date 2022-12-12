import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/auth/auth.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    required this.user,
    required this.size,
  }) : super(key: key);

  final AppUser user;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundColor: Theme.of(context).primaryColor,
      foregroundImage: Image.network(user.profilePicture).image,
    );
  }
}
