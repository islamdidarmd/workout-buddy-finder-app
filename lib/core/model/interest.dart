part of 'models.dart';

@freezed
class Interest with _$Interest {
  factory Interest({
    required String id,
    required String icon,
    required String name,
  }) = _Interest;
}
