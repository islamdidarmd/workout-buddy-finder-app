import 'package:flutter/material.dart';
import 'suggestions_card_item.dart';

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
