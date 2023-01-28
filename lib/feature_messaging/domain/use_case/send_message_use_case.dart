import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../core/firestore_constants.dart';
import '../../../core/model/models.dart';
import '../entity/entities.dart';
import 'update_last_sent_message_use_case.dart';

class SendMessageUseCase {
  final UpdateLastSentMessageUseCase updateLastSentMessageUseCase;

  const SendMessageUseCase({
    required this.updateLastSentMessageUseCase,
  });

  Future<void> call({
    required AppUser loggedInUser,
    required String chatRoomId,
    required String message,
  }) async {
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
      content: message,
      timestamp: DateTime.now(),
    );

    try {
      final result = await _messagesQuery.add(chatMessage);
      updateLastSentMessageUseCase(chatRoomId: chatRoomId, message: message);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
