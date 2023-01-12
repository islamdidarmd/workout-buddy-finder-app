import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart';

abstract class MessagingRepository {
  Future<List<ChatUser>> getParticipants({required String roomId});

  Future<ChatUser?> getParticipantFromID({required String userId});

  Future<void> sendMessage({
    required AppUser loggedInUser,
    required String chatRoomId,
    required String message,
  });
}
