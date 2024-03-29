import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/firestore_constants.dart';
import '../../../../core/model/models.dart';
import '../../../messaging/domain/use_case/create_chat_room_use_case.dart';
import 'check_if_liked_by_use_case.dart';

@injectable
class LikeUserUseCase {
  final CheckIfLikedByUseCase checkIfLikedByUseCase;
  final CreateChatRoomUseCase createChatRoomUseCase;
  final FirebaseFirestore firestore;

  const LikeUserUseCase({
    required this.checkIfLikedByUseCase,
    required this.createChatRoomUseCase,
    required this.firestore,
  });

  Future<void> call({
    required AppUser appUser,
    required String likedUserId,
  }) async {
    final query = firestore.collection(col_liked_users).doc(appUser.userId);

    try {
      final doc = await query.get();
      if (doc.exists) {
        await query.update({
          appUser.userId: FieldValue.arrayUnion([likedUserId]),
        });
      } else {
        await query.set({
          appUser.userId: [likedUserId],
        });
      }
      if (await checkIfLikedByUseCase(
        userId: appUser.userId,
        testLikedByUserId: likedUserId,
      )) {
        final chatRoomId = await createChatRoomUseCase(
          participants: [appUser.userId, likedUserId],
        );
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
