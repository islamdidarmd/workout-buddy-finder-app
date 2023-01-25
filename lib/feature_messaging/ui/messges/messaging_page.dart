import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_messaging/ui/messges/message_list.dart';


class MessagingPage extends StatefulWidget {
  const MessagingPage({Key? key, required this.onOpenChatRoom})
      : super(key: key);
  final Function(String chatRoomId) onOpenChatRoom;

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return Column(
      children: [
        AppBar(title: Text('Messages')),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: page_horizontal_spacing),
            child: MessageList(
              appUser: appUser,
              onOpenChatRoom: widget.onOpenChatRoom,
            ),
          ),
        ),
      ],
    );
  }
}
