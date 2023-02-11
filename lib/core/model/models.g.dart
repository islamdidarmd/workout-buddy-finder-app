// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Interest _$$_InterestFromJson(Map<String, dynamic> json) => _$_Interest(
      id: json['doc_id'] as String,
      icon: json['icon'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_InterestToJson(_$_Interest instance) =>
    <String, dynamic>{
      'doc_id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
    };

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      userId: json['userId'] as String,
      registered:
          DateTimeConverter.dateTimeFromJson(json['registered'] as int?),
      name: json['name'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      birthdate: DateTimeConverter.dateTimeFromJson(json['birthdate'] as int?),
      lastSeen: DateTimeConverter.dateTimeFromJson(json['last_seen'] as int?),
      availability: json['availability'] as String? ?? '',
      nearbyDistance: json['nearbyDistance'] as int? ?? -1,
      email: json['email'] as String? ?? '',
      profilePicture: json['profilePicture'] as String? ?? '',
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      long: (json['long'] as num?)?.toDouble() ?? 0.0,
      geoHash: json['geoHash'] as String? ?? "",
      interestList: (json['interestsList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isHidden: json['is_hidden'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'registered': DateTimeConverter.dateTimeToJson(instance.registered),
      'name': instance.name,
      'gender': instance.gender,
      'birthdate': DateTimeConverter.dateTimeToJson(instance.birthdate),
      'last_seen': DateTimeConverter.dateTimeToJson(instance.lastSeen),
      'availability': instance.availability,
      'nearbyDistance': instance.nearbyDistance,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
      'lat': instance.lat,
      'long': instance.long,
      'geoHash': instance.geoHash,
      'interestsList': instance.interestList,
      'is_hidden': instance.isHidden,
    };
