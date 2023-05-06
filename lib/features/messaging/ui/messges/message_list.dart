import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/firestore_constants.dart';
import '../../../../core/model/models.dart';
import '../../domain/entity/entities.dart';
import 'message_list_item.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key? key,
    required this.appUser,
    required this.onOpenChatRoom,
  }) : super(key: key);

  final AppUser appUser;
  final Function(String chatRoomId) onOpenChatRoom;

  @override
  Widget build(BuildContext context) {
    final messagesQuery = FirebaseFirestore.instance
        .collection(col_messages)
        .where(participants, arrayContains: appUser.userId)
        .withConverter(
          fromFirestore: (snapshot, _) => ChatRoom.fromJson(snapshot.data()!),
          toFirestore: (_, __) => {},
        );

    return FirestoreListView(
      query: messagesQuery,
      itemBuilder: (context, doc) {
        final chat = doc.data();

        return MessageListItem(
          key: ValueKey(chat.chatRoomId),
          chat: chat,
          appUser: context.read(),
          onTap: onOpenChatRoom,
        );
      },
    );
  }
}
