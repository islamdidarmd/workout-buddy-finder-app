import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/core/model/models.dart';
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
      final appUser = await getParticipantFromID(userId: userId);
      if (appUser != null) {
        participants.add(appUser);
      }
    }

    return participants;
  }

  @override
  Future<void> sendMessage({
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
      await _updateLastMessage(chatRoomId: chatRoomId, message: message);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<ChatUser?> getParticipantFromID({required String userId}) async {
    final profileQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(userId)
        .withConverter(
          fromFirestore: (snapshot, _) => ChatUser.fromJson(snapshot.data()!),
          toFirestore: (_, __) => {},
        );
    try {
      final appUser = await profileQuery.get();

      return appUser.data();
    } catch (e) {
      debugPrint(e.toString());
    }

    return null;
  }

  Future<void> _updateLastMessage({
    required String chatRoomId,
    required String message,
  }) async {
    final _lastMessageUpdateQuery =
        FirebaseFirestore.instance.collection(col_messages).doc(chatRoomId);
    final lastMessageResult = await _lastMessageUpdateQuery.update({
      lastMessage: message,
    });
  }
}
