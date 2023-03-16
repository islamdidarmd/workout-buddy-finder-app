import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../core/firestore_constants.dart';

@injectable
class UpdateLastSentMessageUseCase {
  final FirebaseFirestore firestore;

  const UpdateLastSentMessageUseCase(this.firestore);

  Future<void> call({
    required String chatRoomId,
    required String message,
  }) async {
    final lastMessageUpdateQuery =
        firestore.collection(col_messages).doc(chatRoomId);
    try {
      final lastMessageResult = await lastMessageUpdateQuery.update({
        lastMessage: message,
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
