import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
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
    required String url,
    required String path,
    required File image,
    String? fileName,
  }) async {
    try {
      final fileRef = FirebaseStorage.instance.refFromURL(url);
      final imageName = fileName ?? fileRef.name;

      await fileRef.delete();
      final newRef =
      FirebaseStorage.instance.ref().child(path).child(imageName);


      final uploaderTask = await newRef.putFile(image);
      final downloadUrl = await fileRef.getDownloadURL();

      return Left(downloadUrl);
    } catch (e) {
      return Right(FileUploadError());
    }
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

  @override
  Future<Either<String, AppError>> uploadImageFromUrl({
    required String path,
    required String imageUrl,
    String? fileName,
  }) async {
    final imageName = fileName ?? '${DateTime.now().millisecondsSinceEpoch}';

    try {
      final response = await http.get(Uri.parse(imageUrl));
      final fileRef =
          FirebaseStorage.instance.ref().child(path).child(imageName);
      final uploaderTask = await fileRef.putData(response.bodyBytes);
      final downloadUrl = await fileRef.getDownloadURL();

      return Left(downloadUrl);
    } on FirebaseException catch (e) {
      return Right(FileUploadError());
    }
  }

  @override
  Future<Either<String, AppError>> uploadImageFromBytes({
    required String path,
    required Uint8List bytes,
    String? fileName,
  }) async {
    final imageName = fileName ?? '${DateTime.now().millisecondsSinceEpoch}';

    try {
      final fileRef =
          FirebaseStorage.instance.ref().child(path).child(imageName);
      final uploaderTask = await fileRef.putData(bytes);
      final downloadUrl = await fileRef.getDownloadURL();

      return Left(downloadUrl);
    } on FirebaseException catch (e) {
      return Right(FileUploadError());
    }
  }
}
