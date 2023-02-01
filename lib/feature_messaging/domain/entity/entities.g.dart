// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoom _$$_ChatRoomFromJson(Map<String, dynamic> json) => _$_ChatRoom(
      chatRoomId: json['chatRoomId'] as String,
      lastMessage: json['last_message'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'last_message': instance.lastMessage,
      'participants': instance.participants,
    };

_$_ChatUser _$$_ChatUserFromJson(Map<String, dynamic> json) => _$_ChatUser(
      userId: json['userId'] as String,
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String,
      lastSeen: json['last_seen'] as String,
    );

Map<String, dynamic> _$$_ChatUserToJson(_$_ChatUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'last_seen': instance.lastSeen,
    };

_$_ChatMessage _$$_ChatMessageFromJson(Map<String, dynamic> json) =>
    _$_ChatMessage(
      chatMessageId: json['chatMessageId'] as String,
      sender: json['sender'] as String,
      content: json['content'] as String,
      timestamp: DateTimeConverter.dateTimeFromJson(json['timestamp'] as int?),
    );

Map<String, dynamic> _$$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'chatMessageId': instance.chatMessageId,
      'sender': instance.sender,
      'content': instance.content,
      'timestamp': DateTimeConverter.dateTimeToJson(instance.timestamp),
    };
