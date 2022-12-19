import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/core.dart';

class Intro extends StatelessWidget {
  final double avatarSize = 35;

  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 8),
        CircleAvatar(
          radius: avatarSize / 2,
          foregroundImage: Image.network(appUser.profilePicture).image,
        ),
      ],
    );
  }
}
