import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../core/core.dart';
import '../shared/user_avatar.dart';
import '../../domain/domain.dart';
import 'participant_avatar.dart';

class ChatMessageListItem extends StatelessWidget {
  const ChatMessageListItem({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);
  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    final loggedInUser = context.read<AppUser>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (chatMessage.sender == loggedInUser.userId) ...{
          Spacer(),
        } else ...{
          ParticipantAvatar(participantId: chatMessage.sender),
        },
        Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  lightBody(context, chatMessage.content),
                  caption(context, timeago.format(chatMessage.timestamp)),
                ],
              ),
            ),
          ),
        ),
        if (chatMessage.sender == loggedInUser.userId) ...{
          UserAvatar(profilePicture: loggedInUser.profilePicture),
        } else ...{
          Spacer(),
        },
      ],
    );
  }
}
