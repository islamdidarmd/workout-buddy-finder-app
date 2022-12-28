part of 'suggestions_bloc.dart';

@freezed
class SuggestionsEvent with _$SuggestionsEvent{
  factory SuggestionsEvent.loadSuggestions(AppUser appUser) = _LoadSuggestionsEvent;
}
