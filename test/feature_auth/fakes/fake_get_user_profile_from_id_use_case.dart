import 'package:workout_buddy_finder/core/model/models.dart';
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart';

class FakeGetUserProfileFromIdUseCase implements GetUserProfileFromIdUseCase {
  @override
  Future<AppUser?> execute({required String uid}) {
    return Future.value(AppUser.empty());
  }
}
