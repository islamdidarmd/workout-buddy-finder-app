import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../../core/core.dart';
import '../../../feature_auth/feature_auth.dart';

import '../entity/entities.dart';

@injectable
class GetChatRoomParticipantsUseCase {
  final GetUserProfileFromIdUseCase getUserProfileFromIdUseCase;

  const GetChatRoomParticipantsUseCase({
    required this.getUserProfileFromIdUseCase,
  });

  Future<List<AppUser>> call({required String roomId}) async {
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

    final participants = <AppUser>[];
    for (String userId in chatRoom.participants) {
      final appUser = await getUserProfileFromIdUseCase(uid: userId);
      if (appUser != null) {
        participants.add(appUser);
      }
    }

    return participants;
  }
}
