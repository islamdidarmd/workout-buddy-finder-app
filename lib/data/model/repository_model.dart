part of 'models.dart';

@JsonSerializable()
class RepositoryModel {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "owner")
  final OwnerModel owner;

  @JsonKey(name: "private")
  final bool private;

  @JsonKey(name: "html_url")
  final String repoLink;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "topics")
  final List<String> topics;

  const RepositoryModel({
    required this.id,
    required this.name,
    required this.owner,
    required this.private,
    required this.repoLink,
    required this.description,
    required this.topics,
  });

  Map<String, dynamic> toJson() => _$RepositoryModelToJson(this);

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryModelFromJson(json);

  Repository toEntity() {
    return Repository(
      id: id,
      name: name,
      owner: owner.toEntity(),
      private: private,
      repoLink: repoLink,
      description: description,
      topics: topics,
    );
  }
}
