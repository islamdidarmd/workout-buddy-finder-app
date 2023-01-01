import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'suggestion_card.dart';

import '../../di/service_locator.dart';
import 'bloc/suggestions_bloc.dart';

class SuggestionCardContainer extends StatelessWidget {
  const SuggestionCardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _) {
    return BlocProvider<SuggestionsBloc>(
      create: (context) =>
          sl()..add(SuggestionsEvent.loadSuggestions(context.read())),
      child: BlocBuilder<SuggestionsBloc, SuggestionsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const CircularProgressIndicator(),
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
