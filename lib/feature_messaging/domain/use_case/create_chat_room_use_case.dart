import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/firestore_constants.dart';
import '../entity/entities.dart';

@injectable
class CreateChatRoomUseCase {
  Future<String?> call({
    required List<String> participants,
  }) async {
    final query = FirebaseFirestore.instance
        .collection(col_messages)
        .doc()
        .withConverter(
          fromFirestore: (snapshot, _) => ChatRoom.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    try {
      await query.set(
        ChatRoom(
          chatRoomId: query.id,
          lastMessage: '',
          participants: participants,
        ),
      );

      return query.id;
    } catch (e) {
      debugPrint(e.toString());
    }

    return null;
  }
}
