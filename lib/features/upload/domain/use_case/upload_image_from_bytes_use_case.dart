import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class UploadImageFromBytesUseCase {
  final FirebaseStorage firebaseStorage;

  UploadImageFromBytesUseCase(this.firebaseStorage);

  Future<String?> execute({
    required String path,
    required Uint8List bytes,
    String? fileName,
  }) async {
    final imageName = fileName ?? '${DateTime.now().millisecondsSinceEpoch}';

    try {
      final fileRef = firebaseStorage.ref().child(path).child(imageName);
      final uploaderTask = await fileRef.putData(bytes);

      return await fileRef.getDownloadURL();
    } on FirebaseException {
      return null;
    }
  }
}
