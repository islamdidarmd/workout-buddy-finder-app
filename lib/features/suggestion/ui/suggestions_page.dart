import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'intro.dart';
import 'suggestion_card_container.dart';

class SuggestionsPage extends StatelessWidget {
  const SuggestionsPage({
    Key? key,
    required this.onShowProfile,
    required this.onOpenMessaging,
    required this.onOpenProfile,
  }) : super(key: key);

  final Function() onShowProfile;
  final void Function() onOpenMessaging;
  final void Function(String userId) onOpenProfile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppBar(title: Intro(onTap: onShowProfile)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: page_horizontal_spacing,
              vertical: page_vertical_spacing,
            ),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Expanded(
                  child: SuggestionCardContainer(
                    onOpenMessaging: onOpenMessaging,
                    onOpenProfile: onOpenProfile,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
