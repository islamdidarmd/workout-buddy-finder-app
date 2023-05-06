import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/app_error.dart';
import '../../../../core/firestore_constants.dart';
import '../../../../core/model/models.dart';
import 'check_if_disliked_by_use_case.dart';
import 'check_if_liked_by_use_case.dart';
import '../entity/entities.dart';

@injectable
class GetSuggestionsUseCase {
  final CheckIfLikedByUseCase checkIfLikedByUseCase;
  final CheckIfDisLikedByUseCase checkIfDisLikedByUseCase;
  final FirebaseFirestore firestore;

  const GetSuggestionsUseCase({
    required this.checkIfLikedByUseCase,
    required this.checkIfDisLikedByUseCase,
    required this.firestore,
  });

  Future<Either<List<Suggestion>, AppError>> call(AppUser appUser) async {
    final suggestionQuery = firestore
        .collection(col_users)
        .where(field_gender, isEqualTo: appUser.gender)
        .where(field_availability, isEqualTo: appUser.availability)
        .where(field_interest_list, arrayContainsAny: appUser.interestList)
        .where(field_is_hidden, isEqualTo: false)
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
            !await checkIfLikedByUseCase(
              userId: suggestion.userId,
              testLikedByUserId: appUser.userId,
            ) &&
            !await checkIfDisLikedByUseCase(
              userId: suggestion.userId,
              testDisLikedByUserId: appUser.userId,
            )) {
          suggestions.add(suggestion);
        }
      }

      return Left(suggestions);
    } catch (e) {

      return const Right(UnknownError());
    }
  }
}
