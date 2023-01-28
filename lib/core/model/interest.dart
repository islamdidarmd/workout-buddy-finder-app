part of 'models.dart';

@freezed
class Interest with _$Interest {
  factory Interest({
    @JsonKey(name: 'doc_id')
    required String id,
    required String icon,
    required String name,
  }) = _Interest;

  factory Interest.fromJson(Map<String, dynamic> json) =>
      _$InterestFromJson(json);
}
