import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/feature_messaging/ui/chat_room/chat_room_messages_list.dart';
import '../../../core/core.dart';
import '../../domain/entity/entities.dart';

class ChatRoomPage extends HookWidget {
  const ChatRoomPage({
    Key? key,
    required this.chatRoomId,
  }) : super(key: key);

  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    final _messagesQuery = FirebaseFirestore.instance
        .collection(col_messages)
        .doc(chatRoomId)
        .collection(col_chat_room_messages)
        .withConverter(
          fromFirestore: (snapshot, _) =>
              ChatMessage.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    final loggedInUser = context.read<AppUser>();
    final textController = useTextEditingController();

    return BaseFeatureLayout(
      child: Column(
        children: [
          AppBar(title: Text(chatRoomId)),
          Expanded(child: ChatRoomMessagesList(chatRoomId: chatRoomId)),
          SizedBox(
            height: 80,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textController,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final doc = _messagesQuery.doc();
                    final chatMessage = ChatMessage(
                        chatMessageId: doc.id,
                        sender: loggedInUser.userId,
                        content: textController.text,
                        timestamp: DateTime.now());
                    _messagesQuery.add(chatMessage);
                  },
                  icon: Icon(FontAwesomeIcons.paperPlane),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
