import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:workout_buddy_finder/core/core.dart';
import '../../domain/use_case/get_chat_room_participants_use_case.dart';
import '../../../di/service_locator.dart';
import '../../domain/entity/entities.dart';
import '../shared/user_avatar.dart';

class MessageListItem extends HookWidget {
  const MessageListItem({
    Key? key,
    required this.chat,
    required this.appUser,
    required this.onTap,
  }) : super(key: key);

  final ChatRoom chat;
  final AppUser appUser;
  final Function(String chatRoomId) onTap;
  final double _height = 60.0;

  @override
  Widget build(BuildContext context) {
    final participantsFuture = useMemoized(
      () => sl<GetChatRoomParticipantsUseCase>().call(roomId: chat.chatRoomId),
    );
    final participantsSnapshot = useFuture(participantsFuture);
    if (participantsSnapshot.hasData) {
      final List<AppUser> participants = participantsSnapshot.requireData
        ..removeWhere((e) => e.userId == appUser.userId);

      final participant = participants.first;

      return InkWell(
        child: Card(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                child: SizedBox(
                    height: _height,
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      UserAvatar(profilePicture: participant.profilePicture),
                      const SizedBox(width: 16),
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            lightBody(context, participant.name),
                            caption(context, chat.lastMessage),
                            caption(
                              context,
                              'Last Seen: ${timeago.format(participant.lastSeen)}',
                            ),
                          ])
                    ])))),
        onTap: () => onTap(chat.chatRoomId),
      );
    }

    return Container();
  }
}
