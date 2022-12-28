import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_geohash/dart_geohash.dart';
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
    final usersCollection = FirebaseFirestore.instance.collection(users);
    final query = usersCollection.limit(10);

    try {
      final data = await query.get();
      final suggestions = data.docs.map((e) => Suggestion.fromJson(e.data()));

      return Left(suggestions.toList());
    } catch (e) {
      return Right(UnknownError());
    }
  }
}
