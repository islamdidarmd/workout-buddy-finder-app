// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Suggestion _$$_SuggestionFromJson(Map<String, dynamic> json) =>
    _$_Suggestion(
      name: json['name'] as String,
      userId: json['userId'] as String,
      profilePicture: json['profilePicture'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SuggestionToJson(_$_Suggestion instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'profilePicture': instance.profilePicture,
      'lat': instance.lat,
      'long': instance.long,
    };
