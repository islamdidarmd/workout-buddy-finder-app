import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/core/core.dart';

@injectable
class UpdateLastSeenUseCase {
  const UpdateLastSeenUseCase();

  Future<void> call({required String userId}) async {
    final _userQuery =
        FirebaseFirestore.instance.collection(col_users).doc(userId);

    try {
      await _userQuery
          .update({field_last_seen: DateTime.now().millisecondsSinceEpoch});
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
