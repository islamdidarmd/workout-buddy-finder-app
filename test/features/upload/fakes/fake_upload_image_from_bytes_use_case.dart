import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:workout_buddy_finder/features/upload/domain/use_case/upload_image_from_bytes_use_case.dart';

class FakeUploadImageFromBytesUseCase implements UploadImageFromBytesUseCase {
  @override
  Future<String?> execute(
      {required String path, required Uint8List bytes, String? fileName}) {
    return Future.value("/");
  }

  @override
  // TODO: implement firebaseStorage
  FirebaseStorage get firebaseStorage => throw UnimplementedError();
}
