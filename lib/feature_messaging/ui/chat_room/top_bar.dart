import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart';
import 'package:workout_buddy_finder/feature_messaging/ui/shared/user_avatar.dart';

import '../../../di/service_locator.dart';

class TopBar extends HookWidget {
  const TopBar({
    Key? key,
    required this.chatRoomId,
  }) : super(key: key);

  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    final loggedInUser = context.read<AppUser>();

    final participantListFuture = useMemoized(
      () => sl<MessagingRepository>().getParticipants(
        roomId: chatRoomId,
      ),
    );
    final participantListSnapshot = useFuture(participantListFuture);
    if (participantListSnapshot.hasData) {
      final participant = participantListSnapshot.requireData
        ..removeWhere((e) => e.userId == loggedInUser.userId);

      return AppBar(
        title: Row(
          children: [
            UserAvatar(profilePicture: participant.first.profilePicture),
            const SizedBox(width: 12),
            mediumBody(context, participant.first.name),
          ],
        ),
      );
    }

    return Container();
  }
}
