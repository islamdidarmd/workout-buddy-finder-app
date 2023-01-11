// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoom _$$_ChatRoomFromJson(Map<String, dynamic> json) => _$_ChatRoom(
      chatRoomId: json['chatRoomId'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'participants': instance.participants,
    };

_$_ChatUser _$$_ChatUserFromJson(Map<String, dynamic> json) => _$_ChatUser(
      userId: json['userId'] as String,
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String,
    );

Map<String, dynamic> _$$_ChatUserToJson(_$_ChatUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
    };
