import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

class ChatRoomPage extends StatelessWidget {
  const ChatRoomPage({
    Key? key,
    required this.chatRoomId,
  }) : super(key: key);

  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    return BaseFeatureLayout(
      child: Column(
        children: [
          AppBar(
            title: Text(chatRoomId),
          ),
        ],
      ),
    );
  }
}
