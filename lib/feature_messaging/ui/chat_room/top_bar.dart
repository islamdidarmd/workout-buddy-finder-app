import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../domain/use_case/get_chat_room_participants_use_case.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../core/core.dart';
import '../shared/user_avatar.dart';

import '../../../di/service_locator.dart';

class TopBar extends HookWidget {
  const TopBar({
    Key? key,
    required this.chatRoomId,
    required this.onVisitProfile,
  }) : super(key: key);

  final String chatRoomId;
  final void Function(String userId) onVisitProfile;

  @override
  Widget build(BuildContext context) {
    final loggedInUser = context.read<AppUser>();

    final participantListFuture = useMemoized(
      () => sl<GetChatRoomParticipantsUseCase>().call(roomId: chatRoomId),
    );
    final participantListSnapshot = useFuture(participantListFuture);
    if (participantListSnapshot.hasData) {
      final participant = participantListSnapshot.requireData
        ..removeWhere((e) => e.userId == loggedInUser.userId);

      return AppBar(
        title: InkWell(
          child: Row(children: [
            UserAvatar(profilePicture: participant.first.profilePicture),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                lightBody(context, participant.first.name),
                caption(
                  context,
                  'Last Seen: ${timeago.format(participant.first.lastSeen)}',
                ),
              ],
            ),
          ]),
          onTap: () => onVisitProfile(participant.first.userId),
        ),
      );
    }

    return Container();
  }
}
