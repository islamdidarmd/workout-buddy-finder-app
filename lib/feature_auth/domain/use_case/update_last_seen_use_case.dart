import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/core/core.dart';

@injectable
class UpdateLastSeenUseCase {
  final FirebaseFirestore firestore;

  const UpdateLastSeenUseCase(this.firestore);

  Future<void> call({required String userId}) async {
    final userQuery = firestore.collection(col_users).doc(userId);

    try {
      await userQuery
          .update({field_last_seen: DateTime.now().millisecondsSinceEpoch});
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
