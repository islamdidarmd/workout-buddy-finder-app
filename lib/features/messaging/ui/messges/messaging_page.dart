import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/model/models.dart';
import '../../../../core/size_constant.dart';
import 'message_list.dart';


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
        AppBar(title: const Text('Messages')),
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
