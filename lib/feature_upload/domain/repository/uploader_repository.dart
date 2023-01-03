import 'dart:io';
import 'dart:typed_data';

import 'package:either_dart/either.dart';
import '../../../core/core.dart';

abstract class UploaderRepository {
  Future<Either<String, AppError>> replaceImage({
    required String url,
    required String path,
    required File image,
    String? fileName,
  });

  Future<Either<String, AppError>> uploadImage({
    required String path,
    required File image,
    String? fileName,
  });

  Future<Either<String, AppError>> uploadImageFromUrl({
    required String path,
    required String imageUrl,
    String? fileName,
  });

  Future<Either<String, AppError>> uploadImageFromBytes({
    required String path,
    required Uint8List bytes,
    String? fileName,
  });
}
