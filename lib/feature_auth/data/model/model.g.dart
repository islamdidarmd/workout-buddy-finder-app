// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserModel _$$_AppUserModelFromJson(Map<String, dynamic> json) =>
    _$_AppUserModel(
      userId: json['userId'] as String,
      registered: dateTimeFromJson(json['registered'] as int?),
      name: json['name'] as String? ?? '',
      gender: json['gender'] as String? ?? 'male',
      birthdate: dateTimeFromJson(json['birthdate'] as int?),
      availability: json['availability'] as String? ?? 'daily1hr',
      nearbyDistance: json['nearbyDistance'] as int? ?? 10,
      email: json['email'] as String? ?? '',
      profilePicture: json['profilePicture'] as String? ?? '',
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      long: (json['long'] as num?)?.toDouble() ?? 0.0,
      geoHash: json['geoHash'] as String? ?? "",
      interestsList: (json['interestsList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AppUserModelToJson(_$_AppUserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'registered': dateTimeToJson(instance.registered),
      'name': instance.name,
      'gender': instance.gender,
      'birthdate': dateTimeToJson(instance.birthdate),
      'availability': instance.availability,
      'nearbyDistance': instance.nearbyDistance,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
      'lat': instance.lat,
      'long': instance.long,
      'geoHash': instance.geoHash,
      'interestsList': instance.interestsList,
    };
