part of 'entities.dart';

@freezed
class Suggestion with _$Suggestion {
  const Suggestion._();

  factory Suggestion({
    required String name,
    required String userId,
    required String profilePicture,
    required double lat,
    required double long,
  }) = _Suggestion;

  factory Suggestion.fromJson(Map<String, dynamic> json) =>
      _$SuggestionFromJson(json);
}
