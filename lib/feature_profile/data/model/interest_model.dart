part of 'model.dart';

@freezed
class InterestModel with _$InterestModel {
  const InterestModel._();

  factory InterestModel({
    @JsonKey(name: 'doc_id') required String docId,
    required String icon,
    required String name,
  }) = _InterestModel;

  factory InterestModel.fromJson(Map<String, dynamic> json) =>
      _$InterestModelFromJson(json);

  Interest toEntity() => Interest(id: docId, icon: icon, name: name);
}
