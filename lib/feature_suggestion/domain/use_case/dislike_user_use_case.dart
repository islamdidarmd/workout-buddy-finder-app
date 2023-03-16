import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/firestore_constants.dart';
import '../../../core/model/models.dart';

@injectable
class DislikeUserUseCase {
  final FirebaseFirestore firestore;

  const DislikeUserUseCase(this.firestore);

  Future<void> call({
    required AppUser appUser,
    required String dislikedUserId,
  }) async {
    final query = firestore.collection(col_disliked_users).doc(appUser.userId);

    try {
      final doc = await query.get();
      if (doc.exists) {
        await query.update({
          appUser.userId: FieldValue.arrayUnion([dislikedUserId]),
        });
      } else {
        await query.set({
          appUser.userId: [dislikedUserId],
        });
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
