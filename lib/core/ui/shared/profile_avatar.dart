import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:workout_buddy_finder/core/ui/shared/circular_gradient_border_painter.dart';

import '../../core.dart';

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
    return Hero(
      tag: user.userId,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundImage: CachedNetworkImageProvider(user.profilePicture),
            radius: (size / 2),
          ),
          CustomPaint(
            painter: CircularGradientBorderPainter(
              radius: size / 2,
              strokeWidth: 2,
              gradient: LinearGradient(colors: [
                Colors.redAccent,
                Colors.greenAccent,
                Colors.blueAccent
              ]),
            ),
            child: SizedBox(
              width: size,
              height: size,
            ),
          )
              .animate(
                onPlay: (controller) => controller.repeat(reverse: true),
              )
              .rotate(
                duration: 5.seconds,
                begin: 0,
                end: 1,
                alignment: Alignment.center,
              ),
        ],
      ),
    );
  }
}
