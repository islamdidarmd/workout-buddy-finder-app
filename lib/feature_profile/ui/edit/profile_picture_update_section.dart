import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/model/models.dart';
import '../widgets/profile_avatar.dart';

class ProfilePictureUpdateSection extends StatelessWidget {
  const ProfilePictureUpdateSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return Stack(
      children: [
        ProfileAvatar(user: appUser, size: 100),
        Positioned(
          bottom: 8,
          right: 0,
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Icon(
              FontAwesomeIcons.pen,
              color: Colors.black,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
