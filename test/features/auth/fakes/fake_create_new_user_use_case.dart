import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:workout_buddy_finder/core/model/models.dart';
import 'package:workout_buddy_finder/features/auth/domain/use_case/create_new_user_use_case.dart';
import 'package:workout_buddy_finder/features/upload/domain/use_case/upload_image_from_bytes_use_case.dart';

import '../../upload/fakes/fake_upload_image_from_bytes_use_case.dart';


class FakeCreateNewUserUseCas implements CreateNewUserUseCase {
  @override
  Future<AppUser?> execute(
      {required User firebaseUser, required Position currentLocation}) {
    return Future.value(AppUser.empty());
  }

  @override
  UploadImageFromBytesUseCase get uploadImageFromBytesUseCase =>
      FakeUploadImageFromBytesUseCase();

  @override
  // TODO: implement firestore
  FirebaseFirestore get firestore => throw UnimplementedError();
}
