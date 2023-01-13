import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

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
      foregroundImage: CachedNetworkImageProvider(user.profilePicture),
    );
  }
}
