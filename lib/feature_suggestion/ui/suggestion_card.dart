import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'empty_suggestion.dart';

import '../domain/domain.dart';
import 'suggestions_card_item.dart';
import 'suggsetion_action.dart';

class SuggestionCard extends StatelessWidget {
  SuggestionCard({
    Key? key,
    required List<Suggestion> suggestion,
  })  : _suggestions = suggestion,
        super(key: key);

  final List<Suggestion> _suggestions;
  final SwipableStackController _controller = SwipableStackController();
  final _horizontalSwipeThreshold = 0.8;
  final _verticalSwipeThreshold = 0.8;

  void _onSwipeCompleted(index, direction) {
    final itemIndex = index % _suggestions.length;
    if (kDebugMode) {
      print('$itemIndex, $direction');
    }
  }

  Widget _buildSuggestionContent(_, properties) {
    final itemIndex = properties.index % _suggestions.length;

    return Stack(children: [
      SuggestionsCardItem(suggestion: _suggestions[itemIndex]),
      // More custom overlay possible than with overlayBuilder.
    ]);
  }

  @override
  Widget build(BuildContext context) {
    if (_suggestions.isEmpty) {
      return EmptySuggestion();
    }

    return Stack(
      children: [
        Positioned.fill(
          child: SwipableStack(
            controller: _controller,
            detectableSwipeDirections: const {
              SwipeDirection.left,
              SwipeDirection.right,
            },
            stackClipBehaviour: Clip.none,
            onSwipeCompleted: _onSwipeCompleted,
            horizontalSwipeThreshold: _horizontalSwipeThreshold,
            verticalSwipeThreshold: _verticalSwipeThreshold,
            builder: _buildSuggestionContent,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SuggestionAction(),
        ),
      ],
    );
  }
}
