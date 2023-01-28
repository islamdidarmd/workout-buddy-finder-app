import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';
import '../../../core/model/models.dart';

@injectable
class GetInterestListUseCase {
  Future<Either<List<Interest>, AppError>> call() async {
    final fetchInterestQuery = FirebaseFirestore.instance
        .collection('interests')
        .withConverter(
      fromFirestore: (snapshot, _) => Interest.fromJson(snapshot.data()!),
      toFirestore: (value, _) => value.toJson(),
    );

    try {
      final snapshot = await fetchInterestQuery.get();
      final interestList = snapshot.docs
          .map((doc) => doc.data())
          .toList(growable: false);

      return Left(interestList);
    } catch (e) {
      return Right(InvalidDataError());
    }
  }
}