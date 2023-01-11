part of 'entities.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const ChatRoom._();

  factory ChatRoom({
    required String chatRoomId,
    required List<String> participants,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);
}
