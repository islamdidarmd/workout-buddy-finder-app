import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'suggestion_card.dart';

import '../../di/service_locator.dart';
import 'bloc/suggestions_bloc.dart';

class SuggestionCardContainer extends StatelessWidget {
  const SuggestionCardContainer({Key? key}) : super(key: key);

  bool _suggestionBlocBuildWhen(SuggestionsState _, SuggestionsState current) {
    return current.maybeWhen(
      loading: () => true,
      suggestionsFetched: (suggestions) => true,
      orElse: () => false,
    );
  }

  @override
  Widget build(BuildContext _) {
    return BlocProvider<SuggestionsBloc>(
      create: (context) =>
          sl()..add(SuggestionsEvent.loadSuggestions(context.read())),
      child: BlocBuilder<SuggestionsBloc, SuggestionsState>(
        buildWhen: _suggestionBlocBuildWhen,
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const SizedBox(
              height: 40,
              width: 40,
              child: const FittedBox(child: const CircularProgressIndicator()),
            ),
            suggestionsFetched: (suggestions) {
              return SuggestionCard(suggestion: suggestions);
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
