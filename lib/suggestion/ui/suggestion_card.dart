import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/suggestion/ui/suggestions_card_item.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SuggestionsCardItem(),
      ],
    );
  }
}
