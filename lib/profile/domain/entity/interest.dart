part of 'entities.dart';

@freezed
class Interest with _$Interest {
  factory Interest({
    @JsonKey(name: 'doc_id')
    required String docId,
    required String icon,
    required String name,
  }) = _Interest;

  factory Interest.fromJson(Map<String, dynamic> json) =>
      _$InterestFromJson(json);
}
