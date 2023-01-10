import 'package:workout_buddy_finder/core/core.dart';

abstract class SettingsRepository {
  Future<void> clearLikes();

  Future<void> clearDislikes();

  Future<void> clearMessages();
}
