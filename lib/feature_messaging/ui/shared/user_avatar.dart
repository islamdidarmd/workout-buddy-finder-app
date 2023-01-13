import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
    required this.profilePicture,
  }) : super(key: key);
  final String profilePicture;

  @override
  Widget build(BuildContext context) {
    if(profilePicture.isEmpty) {
      return const SizedBox();
    }

    return CircleAvatar(
      foregroundImage: CachedNetworkImageProvider(profilePicture),
    );
  }
}
