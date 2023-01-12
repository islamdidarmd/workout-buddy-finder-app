import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    final _messagesQuery = FirebaseFirestore.instance
        .collection(col_messages)
        .doc(chatRoomId)
        .collection(col_chat_room_messages)
        .withConverter(
          fromFirestore: (snapshot, _) =>
              ChatMessage.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    final doc = _messagesQuery.doc();
    final chatMessage = ChatMessage(
      chatMessageId: doc.id,
      sender: loggedInUser.userId,
      content: controller.text,
      timestamp: DateTime.now(),
    );
    controller.clear();
    final result = await _messagesQuery.add(chatMessage);
  }

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () => _onSendMessage(loggedInUser, textController),
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
