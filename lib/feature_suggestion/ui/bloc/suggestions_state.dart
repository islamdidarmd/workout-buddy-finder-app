part of 'suggestions_bloc.dart';

@freezed
class SuggestionsState with _$SuggestionsState {
  factory SuggestionsState.initial() = _SuggestionsInitialState;

  factory SuggestionsState.loading() = _SuggestionsLoadingState;

  factory SuggestionsState.error(AppError appError) = _SuggestionsErrorState;

  factory SuggestionsState.suggestionsFetched(List<Suggestion> suggestions) =
      _SuggestionsFetchedState;
}
