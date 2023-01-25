
abstract class SettingsRepository {
  Future<void> clearLikes();

  Future<void> clearDislikes();

  Future<void> clearMessages();
}
