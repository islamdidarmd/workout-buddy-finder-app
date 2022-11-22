part of 'models.dart';

@JsonSerializable()
class OwnerModel {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "avatar_url")
  final String? avatarUrl;

  @JsonKey(name: "html_url")
  final String htmlUrl;

  const OwnerModel({
    required this.id,
    required this.avatarUrl,
    required this.htmlUrl,
  });

  Map<String, dynamic> toJson() => _$OwnerModelToJson(this);

  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);

  Owner toEntity() {
    return Owner(
      id: id,
      picture: avatarUrl,
      profileLink: htmlUrl,
    );
  }
}
