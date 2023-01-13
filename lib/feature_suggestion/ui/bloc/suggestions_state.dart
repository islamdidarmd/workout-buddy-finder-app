part of 'suggestions_bloc.dart';

@freezed
class SuggestionsState with _$SuggestionsState {
  factory SuggestionsState.initial() = _SuggestionsInitialState;

  factory SuggestionsState.loading() = _SuggestionsLoadingState;

  factory SuggestionsState.error(AppError appError) = _SuggestionsErrorState;

  factory SuggestionsState.interactionSuccess(String userId) =
      _InteractionSuccessState;

  factory SuggestionsState.interactionError(AppError appError) =
      _InteractionErrorState;

  factory SuggestionsState.suggestionsFetched(List<Suggestion> suggestions) =
      _SuggestionsFetchedState;

  factory SuggestionsState.matchFound(String userId) =
      _MatchFoundState;
}
