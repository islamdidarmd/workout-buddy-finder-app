import 'package:flutter/material.dart';
import 'intro.dart';
import 'suggestion_card_container.dart';

class SuggestionsPage extends StatelessWidget {
  const SuggestionsPage({
    Key? key,
    required this.onShowProfile,
  }) : super(key: key);

  final Function() onShowProfile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Intro(onTap: onShowProfile),
            const SizedBox(height: 8),
            Expanded(child: SuggestionCardContainer()),
          ],
        ),
      ),
    );
  }
}
