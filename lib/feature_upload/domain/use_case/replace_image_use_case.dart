import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReplaceImageUseCase {
  final FirebaseStorage firebaseStorage;

  ReplaceImageUseCase(this.firebaseStorage);

  Future<String?> call({
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
