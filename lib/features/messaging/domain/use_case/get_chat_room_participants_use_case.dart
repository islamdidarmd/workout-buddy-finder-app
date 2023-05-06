import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/firestore_constants.dart';
import '../../../../core/model/models.dart';
import '../../../auth/domain/use_case/get_user_profile_from_id_use_case.dart';
import '../entity/entities.dart';

@injectable
class GetChatRoomParticipantsUseCase {
  final GetUserProfileFromIdUseCase getUserProfileFromIdUseCase;
  final FirebaseFirestore firestore;

  const GetChatRoomParticipantsUseCase({
    required this.getUserProfileFromIdUseCase,
    required this.firestore,
  });

  Future<List<AppUser>> call({required String roomId}) async {
    final messagesQuery = firestore
        .collection(col_messages)
        .doc(roomId)
        .withConverter(
          fromFirestore: (snapshot, _) => ChatRoom.fromJson(snapshot.data()!),
          toFirestore: (_, __) => {},
        );

    ChatRoom chatRoom;
    try {
      final snapshot = await messagesQuery.get();
      chatRoom = snapshot.data()!;
    } catch (e) {
      debugPrint(e.toString());

      return [];
    }

    final participants = <AppUser>[];
    for (String userId in chatRoom.participants) {
      final appUser = await getUserProfileFromIdUseCase.execute(uid: userId);
      if (appUser != null) {
        participants.add(appUser);
      }
    }

    return participants;
  }
}
