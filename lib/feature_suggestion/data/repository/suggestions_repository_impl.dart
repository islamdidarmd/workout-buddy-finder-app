import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/src/either.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../../../feature_messaging/domain/domain.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';

@Injectable(as: SuggestionsRepository)
class SuggestionsRepositoryImpl implements SuggestionsRepository {
  @override
  Future<Either<List<Suggestion>, AppError>> getSuggestions(
    AppUser appUser,
  ) async {
    final suggestionQuery = FirebaseFirestore.instance
        .collection(col_users)
        .where(field_gender, isEqualTo: appUser.gender)
        .where(field_availability, isEqualTo: appUser.availability)
        .where(
          field_interest_list,
          arrayContainsAny: appUser.interestList.map((e) => e.id).toList(),
        )
        .withConverter(
          fromFirestore: (snapshot, _) => Suggestion.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        )
        .limit(10);

    try {
      final snapshotList = await suggestionQuery.get();
      final List<Suggestion> suggestions = [];

      for (QueryDocumentSnapshot<Suggestion> doc in snapshotList.docs) {
        final suggestion = doc.data();
        final distance = Geolocator.distanceBetween(
              suggestion.lat,
              suggestion.long,
              appUser.lat,
              appUser.long,
            ) /
            1000; // Converting to KM.

        if (suggestion.userId != appUser.userId &&
            distance <= appUser.nearbyDistance &&
            !await _isLikedBy(
              userId: suggestion.userId,
              testLikedByUserId: appUser.userId,
            ) &&
            !await _isDisLikedBy(
              userId: suggestion.userId,
              testLikedByUserId: appUser.userId,
            )) {
          suggestions.add(suggestion);
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

  Future<bool> _isDisLikedBy({
    required String userId,
    required String testLikedByUserId,
  }) async {
    final collection =
        FirebaseFirestore.instance.collection(col_disliked_users);
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
