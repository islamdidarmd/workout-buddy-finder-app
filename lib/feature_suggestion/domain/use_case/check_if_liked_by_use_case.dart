import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../core/firestore_constants.dart';

@injectable
class CheckIfLikedByUseCase {
  Future<bool> call({
    required String userId,
    required String testLikedByUserId,
  }) async {
    final query = FirebaseFirestore.instance
        .collection(col_liked_users)
        .doc(testLikedByUserId);

    try {
      final doc = await query.get();
      final likedData = doc.data();
      if (likedData != null) {
        final likedUsersLikeList =
            likedData[testLikedByUserId] ?? [].map((e) => e.toString());
        if (likedUsersLikeList.contains(userId)) {
          return true;
        }
      }
    } catch (e) {}

    return false;
  }
}
