import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/firestore_constants.dart';
import '../../domain/entity/entities.dart';
import 'chat_message_list_item.dart';

class ChatRoomMessagesList extends StatelessWidget {
  const ChatRoomMessagesList({
    Key? key,
    required this.chatRoomId,
  }) : super(key: key);

  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    final messagesQuery = FirebaseFirestore.instance
        .collection(col_messages)
        .doc(chatRoomId)
        .collection(col_chat_room_messages)
        .orderBy(timestamp, descending: true)
        .withConverter(
          fromFirestore: (snapshot, _) =>
              ChatMessage.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    return FirestoreListView(
      query: messagesQuery,
      reverse: true,
      itemBuilder: (_, doc) => ChatMessageListItem(chatMessage: doc.data()),
    );
  }
}
