import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/auth/auth.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  final avatarRatio = 3;
  final radiusRatio = 2;

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return LayoutBuilder(
      builder: (_, constraintType) {
        final size = constraintType.biggest;

        return CircleAvatar(
          radius: (size.width / avatarRatio) / radiusRatio,
          backgroundColor: Theme.of(context).primaryColor,
          foregroundImage: Image.network(authBloc.appUser.profilePicture).image,
        );
      },
    );
  }
}
