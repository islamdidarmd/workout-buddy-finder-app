import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/model/models.dart';
import '../../../core/ui/shared/profile_avatar.dart';
import '../../../core/ui/style/texts.dart';

class Intro extends StatelessWidget {
  final double avatarSize = 35;

  const Intro({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        mediumBoldTitle(context, 'Hi, ${appUser.name}'),
        const SizedBox(width: 8),
        InkWell(
          onTap: onTap,
          child: ProfileAvatar(user: appUser, size: avatarSize),
        ),
      ],
    );
  }
}
