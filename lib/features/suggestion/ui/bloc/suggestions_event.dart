part of 'suggestions_bloc.dart';

@freezed
class SuggestionsEvent with _$SuggestionsEvent{
  factory SuggestionsEvent.loadSuggestions(AppUser appUser) = _LoadSuggestionsEvent;
  factory SuggestionsEvent.likeUser(AppUser appUser, String userId) = _LikeUserEvent;
  factory SuggestionsEvent.dislikeUser(AppUser appUser, String userId) = _DislikeUserEvent;
  factory SuggestionsEvent.checkIfHasMatch(AppUser appUser, String userId) = _CheckIfHasMatchEvent;
}
