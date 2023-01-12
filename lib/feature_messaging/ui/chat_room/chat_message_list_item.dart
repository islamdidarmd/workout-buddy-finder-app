import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart';

class ChatMessageListItem extends StatelessWidget {
  const ChatMessageListItem({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);
  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(chatMessage.content),
          Text(chatMessage.sender),
          Text(chatMessage.timestamp.toString()),
        ],
      ),
    );
  }
}
