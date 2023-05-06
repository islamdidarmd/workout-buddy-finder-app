import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/firestore_constants.dart';


@injectable
class CheckIfDisLikedByUseCase {
  final FirebaseFirestore firestore;

  CheckIfDisLikedByUseCase(this.firestore);

  Future<bool> call({
    required String userId,
    required String testDisLikedByUserId,
  }) async {
    final query =
        firestore.collection(col_disliked_users).doc(testDisLikedByUserId);

    try {
      final doc = await query.get();
      final likedData = doc.data();
      if (likedData != null) {
        final likedUsersLikeList =
            likedData[testDisLikedByUserId] ?? [].map((e) => e.toString());
        if (likedUsersLikeList.contains(userId)) {
          return true;
        }
      }
    } catch (e) {}

    return false;
  }
}
