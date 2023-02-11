import 'dart:typed_data';

import 'package:workout_buddy_finder/feature_upload/feature_upload.dart';

class FakeUploadImageFromBytesUseCase implements UploadImageFromBytesUseCase {
  @override
  Future<String?> execute(
      {required String path, required Uint8List bytes, String? fileName}) {
    return Future.value("/");
  }
}
