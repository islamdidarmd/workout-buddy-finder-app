import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart';

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
      final List<Suggestion> suggestions = [];
      for (QueryDocumentSnapshot<Map<String, dynamic>?> doc in data.docs) {
        final data = doc.data();
        if (data == null) continue;

        final model = Suggestion.fromJson(data);
        if (model.userId != appUser.userId &&
            !await _isLikedBy(
              userId: model.userId,
              testLikedByUserId: appUser.userId,
            )) {
          suggestions.add(model);
        }
      }

      return Left(suggestions);
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
      if (await _isLikedBy(
        userId: appUser.userId,
        testLikedByUserId: likedUserId,
      )) {
        final docRef = FirebaseFirestore.instance
            .collection(col_messages)
            .doc()
            .withConverter(
              fromFirestore: (snapshot, _) =>
                  ChatRoom.fromJson(snapshot.data()!),
              toFirestore: (value, _) => value.toJson(),
            );
        await docRef.set(
          ChatRoom(
            chatRoomId: docRef.id,
            participants: [appUser.userId, likedUserId],
          ),
        );
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

  @override
  Future<bool> hasMatchWithUser(AppUser appUser, String testUserId) async {
    return await _isLikedBy(
      userId: appUser.userId,
      testLikedByUserId: testUserId,
    );
  }

  Future<bool> _isLikedBy({
    required String userId,
    required String testLikedByUserId,
  }) async {
    final collection = FirebaseFirestore.instance.collection(col_liked_users);
    final docRef = collection.doc(testLikedByUserId);

    try {
      final doc = await docRef.get();
      final likedData = doc.data();
      if (likedData != null) {
        final Iterable<String> likedUsersLikeList =
            (likedData[testLikedByUserId] as List<dynamic>?)
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
