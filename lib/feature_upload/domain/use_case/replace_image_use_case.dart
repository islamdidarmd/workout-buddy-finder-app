import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReplaceImageUseCase {
  Future<String?> call({
    required String url,
    required String path,
    required File image,
    String? fileName,
  }) async {
    try {
      final fileRef = FirebaseStorage.instance.refFromURL(url);
      final imageName = fileName ?? fileRef.name;

      await fileRef.delete();
      final newRef =
      FirebaseStorage.instance.ref().child(path).child(imageName);


      final uploaderTask = await newRef.putFile(image);

      return await fileRef.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}
