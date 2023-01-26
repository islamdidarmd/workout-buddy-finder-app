
abstract class PushRepository {
  Future<void> uploadDeviceToken();

  Future<void> sendDataPush(String userId, Map<String, dynamic> data);

  Future<void> sendNotificationPush(
      String userId,
    Map<String, dynamic> notification,
  );

  Future<void> sendHybridPush(
      String userId,
    Map<String, dynamic> notification,
    Map<String, dynamic> data,
  );
}
