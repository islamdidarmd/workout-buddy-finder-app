import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:workout_buddy_finder/core/model/models.dart';
import 'package:workout_buddy_finder/features/auth/domain/use_case/get_user_profile_from_id_use_case.dart';

class FakeGetUserProfileFromIdUseCase implements GetUserProfileFromIdUseCase {
  @override
  Future<AppUser?> execute({required String uid}) {
    return Future.value(AppUser.empty());
  }

  @override
  // TODO: implement firestore
  FirebaseFirestore get firestore => throw UnimplementedError();
}
