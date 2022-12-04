import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/suggestion/ui/intro.dart';
import 'package:workout_buddy_finder/suggestion/ui/suggestion_card.dart';

class SuggestionsPage extends StatelessWidget {
  const SuggestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Intro(),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
                child: SuggestionCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
