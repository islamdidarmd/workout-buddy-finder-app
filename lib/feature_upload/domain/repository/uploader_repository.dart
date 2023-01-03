import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:workout_buddy_finder/core/core.dart';

abstract class UploaderRepository {
  Future<Either<void, AppError>> replaceImage({
    required String url,
    required String path,
    required File image,
  });

  Future<Either<String, AppError>> uploadImage({
    required String path,
    required File image,
    String? fileName,
  });
}
