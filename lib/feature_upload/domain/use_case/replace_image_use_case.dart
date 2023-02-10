import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReplaceImageUseCase {
  Future<String?> call({
    required String url,
    required File image,
  }) async {
    try {
      final fileRef = FirebaseStorage.instance.refFromURL(url);
      final uploaderTask = await fileRef.putFile(image);

      return await fileRef.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}
