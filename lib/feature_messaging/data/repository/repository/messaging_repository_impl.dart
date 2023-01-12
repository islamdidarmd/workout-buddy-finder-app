import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/domain.dart';

import '../../../../core/firestore_constants.dart';

@Injectable(as: MessagingRepository)
class MessagingRepositoryImpl implements MessagingRepository {
  @override
  Future<List<ChatUser>> getParticipants({required String roomId}) async {
    final _messagesQuery = FirebaseFirestore.instance
        .collection(col_messages)
        .doc(roomId)
        .withConverter(
          fromFirestore: (snapshot, _) => ChatRoom.fromJson(snapshot.data()!),
          toFirestore: (_, __) => {},
        );

    ChatRoom chatRoom;
    try {
      final snapshot = await _messagesQuery.get();
      chatRoom = snapshot.data()!;
    } catch (e) {
      debugPrint(e.toString());

      return [];
    }

    final participants = <ChatUser>[];
    for (String userId in chatRoom.participants) {
      final profileQuery = FirebaseFirestore.instance
          .collection(col_users)
          .doc(userId)
          .withConverter(
            fromFirestore: (snapshot, _) => ChatUser.fromJson(snapshot.data()!),
            toFirestore: (_, __) => {},
          );
      try {
        final appUser = await profileQuery.get();
        participants.add(appUser.data()!);
      } catch (e) {
        debugPrint(e.toString());
      }
    }

    return participants;
  }
}
