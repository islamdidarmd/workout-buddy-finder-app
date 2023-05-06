import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReplaceImageUseCase {
  final FirebaseStorage firebaseStorage;

  const ReplaceImageUseCase(this.firebaseStorage);

  Future<String?> execute({
    required String url,
    required File image,
  }) async {
    try {
      final fileRef = firebaseStorage.refFromURL(url);
      await fileRef.putFile(image);

      return await fileRef.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}
