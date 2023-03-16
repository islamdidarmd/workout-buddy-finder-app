import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';
import '../../../core/firestore_constants.dart';
import '../../../core/model/models.dart';

@injectable
class UpdateUserProfilePictureUseCase {
  final FirebaseFirestore firestore;

  UpdateUserProfilePictureUseCase(this.firestore);

  Future<Either<void, AppError>> call(
    AppUser appUser,
    String newUrl,
  ) async {
    final addInterestQuery =
        firestore.collection(col_users).doc(appUser.userId);

    try {
      await addInterestQuery.update({
        field_profile_picture: newUrl,
      });

      return const Left(null);
    } catch (e) {
      return const Right(UnknownError());
    }
  }
}
