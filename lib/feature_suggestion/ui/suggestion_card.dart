import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di/service_locator.dart';
import 'bloc/suggestions_bloc.dart';
import 'suggestions_card_item.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SuggestionsBloc>(
      create: (context) =>
          sl()..add(SuggestionsEvent.loadSuggestions(context.read())),
      child: BlocBuilder<SuggestionsBloc, SuggestionsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const CircularProgressIndicator(),
            suggestionsFetched: (suggestions) {
              return Stack(
                fit: StackFit.expand,
                children: suggestions
                    .map((suggestion) =>
                        SuggestionsCardItem(suggestion: suggestion))
                    .toList(),
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
