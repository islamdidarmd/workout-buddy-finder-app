import 'package:workout_buddy_finder/core/core.dart';

abstract class VisitUserRepository {
  Future<AppUser?> getAppUserFromId({required String userId});
}
