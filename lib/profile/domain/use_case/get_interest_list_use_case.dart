import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../domain.dart';

@injectable
class GetInterestListUseCase {
  Future<Either<List<Interest>, AppError>> call() async {
    final collection =
        await FirebaseFirestore.instance.collection('interests').get();
    try {
      final interestList = collection.docs
          .map((doc) => Interest.fromJson(doc.data()))
          .toList(growable: false);

      return Left(interestList);
    } catch (e) {
      return Right(InvalidDataError());
    }
  }
}
