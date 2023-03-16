import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';
import '../../../core/firestore_constants.dart';
import '../../../core/model/models.dart';
import '../../../feature_upload/feature_upload.dart';

@injectable
class UpdateUserProfilePictureUseCase {
  final FirebaseFirestore firestore;
  final ReplaceImageUseCase replaceImageUseCase;

  UpdateUserProfilePictureUseCase(this.firestore, this.replaceImageUseCase);

  Future<Either<void, AppError>> execute(
    AppUser appUser,
    File image,
  ) async {
    final imageUrl = await replaceImageUseCase.execute(
      url: appUser.profilePicture,
      image: image,
    );

    if(imageUrl == null) {
      return const Right(FileUploadError());
    }

    final addInterestQuery =
        firestore.collection(col_users).doc(appUser.userId);

    try {
      await addInterestQuery.update({field_profile_picture: imageUrl});

      return const Left(null);
    } catch (e) {
      return const Right(UnknownError());
    }
  }
}
