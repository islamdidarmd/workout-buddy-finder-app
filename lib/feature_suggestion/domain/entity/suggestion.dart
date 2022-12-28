part of 'entities.dart';

@freezed
class Suggestion with _$Suggestion {
  const Suggestion._();

  factory Suggestion({
    required String name,
    required String profilePicture,
  }) = _Suggestion;

  factory Suggestion.fromJson(Map<String, dynamic> json) =>
      _$SuggestionFromJson(json);
}
