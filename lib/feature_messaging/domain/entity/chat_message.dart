part of 'entities.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String chatMessageId,
    required String sender,
    required String content,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime timestamp,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
