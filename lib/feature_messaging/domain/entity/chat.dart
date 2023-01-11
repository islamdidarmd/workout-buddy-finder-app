part of 'entities.dart';

@freezed
class Chat with _$Chat {
  const Chat._();

  factory Chat ({required List<String> participants}) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
