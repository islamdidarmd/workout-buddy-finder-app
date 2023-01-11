import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import '../../core/core.dart';

import '../domain/domain.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    final _messagesQuery = FirebaseFirestore.instance
        .collection(col_messages)
        .where(participants, arrayContains: appUser.userId);

    return FirestoreListView(
      query: _messagesQuery,
      itemBuilder: (context, doc) {
        final chat = Chat.fromJson(doc.data());

        return Text(chat.participants.first);
      },
    );
  }
}
