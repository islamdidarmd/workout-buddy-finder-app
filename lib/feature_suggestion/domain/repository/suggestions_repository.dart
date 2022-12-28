import 'package:either_dart/either.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../entity/entities.dart';

abstract class SuggestionsRepository {
  Future<Either<List<Suggestion>, AppError>> getSuggestions(AppUser appUser);
}
