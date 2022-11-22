part of 'models.dart';

@JsonSerializable()
class RepoSearchResponse {
  @JsonKey(name: "items")
  final List<RepositoryModel> items;

  const RepoSearchResponse({
    required this.items,
  });

  Map<String, dynamic> toJson() => _$RepoSearchResponseToJson(this);

  factory RepoSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$RepoSearchResponseFromJson(json);

  List<Repository> toEntity() => items.map((e) => e.toEntity()).toList();
}
