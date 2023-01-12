import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart';

abstract class MessagingRepository {
  Future<List<ChatUser>> getParticipants({required String roomId});
}
