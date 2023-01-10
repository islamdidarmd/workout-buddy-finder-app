import 'package:cloud_firestore/cloud_firestore.dart';
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
      final suggestions = data.docs.map((e) => Suggestion.fromJson(e.data()));

      return Left(suggestions.toList());
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
    final collection = FirebaseFirestore.instance.collection(col_disliked_users);
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
}
