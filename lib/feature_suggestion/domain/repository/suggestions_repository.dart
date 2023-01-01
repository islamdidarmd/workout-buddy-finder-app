import 'package:either_dart/either.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../entity/entities.dart';

abstract class SuggestionsRepository {
  Future<Either<List<Suggestion>, AppError>> getSuggestions(AppUser appUser);

  Future<Either<void, AppError>> likeUser(AppUser appUser, String likedUserId);

  Future<Either<void, AppError>> dislikeUser(
    AppUser appUser,
    String dislikedUserId,
  );
}
