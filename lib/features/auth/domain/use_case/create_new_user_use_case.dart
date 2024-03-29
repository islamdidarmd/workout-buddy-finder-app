import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/firebase_storage_constants.dart';
import '../../../../core/firestore_constants.dart';
import '../../../../core/model/models.dart';
import '../../../location/utility/geohash_util.dart';
import '../../../upload/domain/use_case/upload_image_from_bytes_use_case.dart';

@injectable
class CreateNewUserUseCase {
  final UploadImageFromBytesUseCase uploadImageFromBytesUseCase;
  final FirebaseFirestore firestore;

  const CreateNewUserUseCase({
    required this.uploadImageFromBytesUseCase,
    required this.firestore,
  });

  Future<AppUser?> execute({
    required User firebaseUser,
    required Position currentLocation,
  }) async {
    final createNewUserQuery = firestore
        .collection(col_users)
        .doc(firebaseUser.uid)
        .withConverter(
          fromFirestore: (snapshot, _) => AppUser.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    final geoHash = getGeoHash(
      latitude: currentLocation.latitude,
      longitude: currentLocation.longitude,
    );
    final imageUrl = await _uploadDefaultUserAvatar(firebaseUser);
    if (imageUrl == null) {
      return null;
    }

    final appUser = AppUser(
      userId: firebaseUser.uid,
      registered: DateTime.now(),
      name: firebaseUser.displayName ?? '',
      email: firebaseUser.email ?? '',
      profilePicture: imageUrl,
      lat: currentLocation.latitude,
      long: currentLocation.longitude,
      geoHash: geoHash,
    );

    try {
      await createNewUserQuery.set(appUser);
    } catch (e) {
      return null;
    }
    return null;
  }

  Future<String?> _uploadDefaultUserAvatar(User user) async {
    final imageBytes = await rootBundle.load('assets/icon/app_logo.png');
    const imagePath = profile_pictures;
    final fileName = user.uid;

    return await uploadImageFromBytesUseCase.execute(
      path: imagePath,
      bytes: imageBytes.buffer.asUint8List(),
      fileName: fileName,
    );
  }
}
