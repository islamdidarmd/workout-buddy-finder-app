import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../navigation/routes.dart';
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
        mediumTitle(context, 'Hi, ${appUser.name}'),
        const SizedBox(width: 8),
        InkWell(
          onTap: () => context.go(rootRouteMap[RootRoute.profile]!),
          child: CircleAvatar(
            radius: avatarSize / 2,
            foregroundImage: CachedNetworkImageProvider(appUser.profilePicture),
          ),
        ),
      ],
    );
  }
}
