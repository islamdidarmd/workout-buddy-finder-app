// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) => OwnerModel(
      id: json['id'] as int,
      avatarUrl: json['avatar_url'] as String?,
      htmlUrl: json['html_url'] as String,
    );

Map<String, dynamic> _$OwnerModelToJson(OwnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
    };

RepositoryModel _$RepositoryModelFromJson(Map<String, dynamic> json) =>
    RepositoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      owner: OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
      private: json['private'] as bool,
      repoLink: json['html_url'] as String,
      description: json['description'] as String?,
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$RepositoryModelToJson(RepositoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'private': instance.private,
      'html_url': instance.repoLink,
      'description': instance.description,
      'topics': instance.topics,
    };

RepoSearchResponse _$RepoSearchResponseFromJson(Map<String, dynamic> json) =>
    RepoSearchResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => RepositoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RepoSearchResponseToJson(RepoSearchResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
