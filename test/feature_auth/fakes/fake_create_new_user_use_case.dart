import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart';
import 'package:workout_buddy_finder/feature_upload/feature_upload.dart';

import '../../feature_upload/fakes/fake_upload_image_from_bytes_use_case.dart';

class FakeCreateNewUserUseCas implements CreateNewUserUseCase {
  @override
  Future<AppUser?> execute(
      {required User firebaseUser, required Position currentLocation}) {
    return Future.value(AppUser.empty());
  }

  @override
  UploadImageFromBytesUseCase get uploadImageFromBytesUseCase =>
      FakeUploadImageFromBytesUseCase();
}
