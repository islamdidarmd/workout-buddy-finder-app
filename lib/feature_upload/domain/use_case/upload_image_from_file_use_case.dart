import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class UploadImageFromFileUseCase {
  final FirebaseStorage firebaseStorage;

  UploadImageFromFileUseCase(this.firebaseStorage);

  Future<String?> call({
    required String path,
    required File image,
    String? fileName,
  }) async {
    final imageName = fileName ?? '${DateTime.now().millisecondsSinceEpoch}';

    try {
      final fileRef = firebaseStorage.ref().child(path).child(imageName);
      final uploaderTask = await fileRef.putFile(image);

      return await fileRef.getDownloadURL();
    } on FirebaseException {
      return null;
    }
  }
}
