// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
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
