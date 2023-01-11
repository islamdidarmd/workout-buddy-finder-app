import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';

@Injectable(as: SuggestionsRepository)
class SuggestionsRepositoryImpl implements SuggestionsRepository {
  @override
  Future<Either<List<Suggestion>, AppError>> getSuggestions(
    AppUser appUser,
  ) async {
    final usersCollection = FirebaseFirestore.instance.collection(col_users);
    final query = usersCollection.limit(10);

    try {
      final data = await query.get();
      final List<Suggestion?> suggestions =
          await Future.forEach(data.docs, (doc) async {
        final model = Suggestion.fromJson(doc.data());
        if (await _isLikedBy(
          userId: model.userId,
          testUserId: appUser.userId,
        )) {
          return null;
        }

        return model;
      });

      return Left(suggestions.whereNotNull().toList());
    } catch (e) {
      return Right(UnknownError());
    }
  }

  @override
  Future<Either<void, AppError>> likeUser(
    AppUser appUser,
    String likedUserId,
  ) async {
    final collection = FirebaseFirestore.instance.collection(col_liked_users);
    final messagesCollection =
        FirebaseFirestore.instance.collection(col_messages);
    final docRef = collection.doc(appUser.userId);

    try {
      final doc = await docRef.get();
      if (doc.exists) {
        await docRef.update({
          appUser.userId: FieldValue.arrayUnion([likedUserId]),
        });
      } else {
        await docRef.set({
          appUser.userId: [likedUserId],
        });
      }
      if (await _isLikedBy(userId: appUser.userId, testUserId: likedUserId)) {
        final docRef = await messagesCollection.add({
          "user1": appUser.userId,
          "user2": likedUserId,
        });
      }
    } catch (e) {
      return Right(UnknownError());
    }

    return Left(null);
  }

  @override
  Future<Either<void, AppError>> dislikeUser(
    AppUser appUser,
    String dislikedUserId,
  ) async {
    final collection =
        FirebaseFirestore.instance.collection(col_disliked_users);
    final docRef = collection.doc(appUser.userId);

    try {
      final doc = await docRef.get();
      if (doc.exists) {
        await docRef.update({
          appUser.userId: FieldValue.arrayUnion([dislikedUserId]),
        });
      } else {
        await docRef.set({
          appUser.userId: [dislikedUserId],
        });
      }
    } catch (e) {
      return Right(UnknownError());
    }

    return Left(null);
  }

  Future<bool> _isLikedBy({
    required String userId,
    required String testUserId,
  }) async {
    final collection = FirebaseFirestore.instance.collection(col_liked_users);
    final docRef = collection.doc(testUserId);

    try {
      final doc = await docRef.get();
      final likedData = doc.data();
      if (likedData != null) {
        final Iterable<String> likedUsersLikeList =
            (likedData[testUserId] as List<dynamic>?)
                    ?.map((e) => e.toString()) ??
                [];
        if (likedUsersLikeList.contains(userId)) {
          return true;
        }
      }
    } catch (e) {}

    return false;
  }
}
