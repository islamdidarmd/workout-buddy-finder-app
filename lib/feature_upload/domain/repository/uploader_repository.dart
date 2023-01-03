import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:workout_buddy_finder/core/core.dart';

abstract class UploaderRepository {
  Future<Either<String, AppError>> replaceImage({
    required AppUser appUser,
    required File image,
    required String url,
  });

  Future<Either<String, AppError>> uploadImage({
    required String path,
    required File image,
    String? fileName,
  });
}
