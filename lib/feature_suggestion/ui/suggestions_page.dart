import 'package:flutter/material.dart';
import 'intro.dart';
import 'suggestion_card_container.dart';

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
                    const EdgeInsets.all(16.0),
                child: SuggestionCardContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
