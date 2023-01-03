import 'dart:io';

import 'package:either_dart/src/either.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/core/error/app_error.dart';
import 'package:workout_buddy_finder/core/model/models.dart';
import 'package:workout_buddy_finder/feature_upload/domain/domain.dart';

@Injectable(as: UploaderRepository)
class UploaderRepositoryImpl implements UploaderRepository {
  @override
  Future<Either<String, AppError>> replaceImage({
    required AppUser appUser,
    required File image,
    required String url,
  }) {
    // TODO: implement replaceImage
    throw UnimplementedError();
  }

  @override
  Future<Either<String, AppError>> uploadImage({
    required String path,
    required File image,
    String? fileName,
  }) async {
    final imageName = fileName ?? '${DateTime.now().millisecondsSinceEpoch}';

    try {
      final fileRef =
          FirebaseStorage.instance.ref().child(path).child(imageName);
      final uploaderTask = await fileRef.putFile(image);
      final downloadUrl = await fileRef.getDownloadURL();

      return Left(downloadUrl);
    } on FirebaseException catch (e) {
      return Right(FileUploadError());
    }
  }
}