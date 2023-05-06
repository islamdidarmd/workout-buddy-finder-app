part of 'entities.dart';

@freezed
class ChatUser with _$ChatUser {
  const factory ChatUser({
    required String userId,
    required String name,
    required String profilePicture,
    @JsonKey(name: 'last_seen') required String lastSeen,
  }) = _ChatUser;

  factory ChatUser.fromJson(Map<String, dynamic> json) =>
      _$ChatUserFromJson(json);
}
