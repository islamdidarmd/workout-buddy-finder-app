import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';
import '../../../core/firestore_constants.dart';
import '../../../core/model/models.dart';

@injectable
class AddUserInterestUseCase {
  Future<Either<void, AppError>> call(
    AppUser appUser,
    String interestId,
  ) async {
    final addInterestQuery =
        FirebaseFirestore.instance.collection(col_users).doc(appUser.userId);

    try {
      await addInterestQuery.update({
        field_interest_list: FieldValue.arrayUnion([interestId]),
      });

      return Left(null);
    } catch (e) {
      return Right(UnknownError());
    }
  }
}
