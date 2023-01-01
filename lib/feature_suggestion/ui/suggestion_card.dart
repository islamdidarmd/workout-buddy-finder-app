import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'bloc/suggestions_bloc.dart';
import 'empty_suggestion.dart';

import '../domain/domain.dart';
import 'suggestions_card_item.dart';
import 'suggestion_action.dart';

class SuggestionCard extends StatefulWidget {
  SuggestionCard({
    Key? key,
    required List<Suggestion> suggestion,
  })  : _suggestions = suggestion,
        super(key: key);

  final List<Suggestion> _suggestions;

  @override
  State<SuggestionCard> createState() => _SuggestionCardState();
}

class _SuggestionCardState extends State<SuggestionCard> {
  final SwipableStackController _controller = SwipableStackController();
  final List<Suggestion> suggestions = [];

  final _horizontalSwipeThreshold = 0.8;

  final _verticalSwipeThreshold = 0.8;

  final _defaultItemCount = 3;

  @override
  void initState() {
    super.initState();
    suggestions.addAll(widget._suggestions);
  }

  void _onSwipeCompleted(
    BuildContext context,
    int index,
    SwipeDirection direction,
  ) {
    final itemIndex = index % suggestions.length;
    if (direction == SwipeDirection.left) {
      context.read<SuggestionsBloc>().add(SuggestionsEvent.dislikeUser(
            context.read<AppUser>(),
            suggestions[itemIndex].userId,
          ));
    } else if (direction == SwipeDirection.right) {
      context.read<SuggestionsBloc>().add(SuggestionsEvent.likeUser(
            context.read<AppUser>(),
            suggestions[itemIndex].userId,
          ));
    }
  }

  Widget _buildSuggestionContent(_, properties) {
    final itemIndex = properties.index % suggestions.length;

    return Stack(children: [
      SuggestionsCardItem(suggestion: suggestions[itemIndex]),
      // More custom overlay possible than with overlayBuilder.
    ]);
  }

  void _listenToSuggestionBlocState(BuildContext _, SuggestionsState state) {
    state.maybeWhen(
      interactionSuccess: (userId) {
        setState(() {
          suggestions.removeWhere((e) => e.userId == userId);
        });
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    if (suggestions.isEmpty) {
      return EmptySuggestion();
    }

    return BlocListener<SuggestionsBloc, SuggestionsState>(
      listener: _listenToSuggestionBlocState,
      child: Stack(
        children: [
          Positioned.fill(
            child: SwipableStack(
              itemCount: min(_defaultItemCount, suggestions.length),
              controller: _controller,
              detectableSwipeDirections: const {
                SwipeDirection.left,
                SwipeDirection.right,
              },
              stackClipBehaviour: Clip.none,
              onSwipeCompleted: (index, direction) =>
                  _onSwipeCompleted(context, index, direction),
              horizontalSwipeThreshold: _horizontalSwipeThreshold,
              verticalSwipeThreshold: _verticalSwipeThreshold,
              builder: _buildSuggestionContent,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SuggestionAction(
              onLike: () =>
                  _controller.next(swipeDirection: SwipeDirection.right),
              onDislike: () =>
                  _controller.next(swipeDirection: SwipeDirection.left),
            ),
          ),
        ],
      ),
    );
  }
}
