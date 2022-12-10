// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserModel _$$_AppUserModelFromJson(Map<String, dynamic> json) =>
    _$_AppUserModel(
      userId: json['userId'] as String,
      registered: dateTimeFromJson(json['registered'] as int),
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      profilePicture: json['profilePicture'] as String? ?? '',
    );

Map<String, dynamic> _$$_AppUserModelToJson(_$_AppUserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'registered': dateTimeToJson(instance.registered),
      'name': instance.name,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
    };
