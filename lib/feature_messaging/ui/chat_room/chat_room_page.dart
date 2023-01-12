import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart';
import '../../../di/service_locator.dart';
import 'top_bar.dart';
import 'chat_room_messages_list.dart';
import '../../../core/core.dart';
import '../../domain/entity/entities.dart';

class ChatRoomPage extends HookWidget {
  const ChatRoomPage({
    Key? key,
    required this.chatRoomId,
  }) : super(key: key);

  final String chatRoomId;

  Future<void> _onSendMessage(
    AppUser loggedInUser,
    TextEditingController controller,
  ) async {
    final repository = sl<MessagingRepository>();
    final text = controller.text;
    controller.clear();
    await repository.sendMessage(
      loggedInUser: loggedInUser,
      chatRoomId: chatRoomId,
      message: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    final loggedInUser = context.read<AppUser>();
    final textController = useTextEditingController();

    return BaseFeatureLayout(
      child: Column(
        children: [
          TopBar(chatRoomId: chatRoomId),
          Expanded(child: ChatRoomMessagesList(chatRoomId: chatRoomId)),
          SizedBox(
            height: 80,
            child: Row(
              children: [
                Expanded(child: TextField(controller: textController)),
                IconButton(
                  onPressed: () => _onSendMessage(loggedInUser, textController),
                  icon: Icon(
                    FontAwesomeIcons.paperPlane,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
