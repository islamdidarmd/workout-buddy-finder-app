import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:swipable_stack/src/model/swipe_properties.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'card_overlay.dart';
import 'bloc/suggestions_bloc.dart';
import 'empty_suggestion.dart';

import '../domain/domain.dart';
import 'suggestions_card_item.dart';
import 'suggestion_action.dart';

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

  final _defaultItemCount = 3;

  void _onSwipeCompleted(
    BuildContext context,
    int index,
    SwipeDirection direction,
  ) {
    final itemIndex = index % _suggestions.length;
    if (direction == SwipeDirection.left) {
      context.read<SuggestionsBloc>().add(SuggestionsEvent.dislikeUser(
            context.read<AppUser>(),
            _suggestions[itemIndex].userId,
          ));
    } else if (direction == SwipeDirection.right) {
      context.read<SuggestionsBloc>().add(SuggestionsEvent.likeUser(
            context.read<AppUser>(),
            _suggestions[itemIndex].userId,
          ));
    }
  }

  Widget _buildSuggestionContent(
    BuildContext _,
    ItemSwipeProperties properties,
  ) {
    final itemIndex = properties.index % _suggestions.length;

    return SuggestionsCardItem(suggestion: _suggestions[itemIndex]);
  }

  Widget _buildOverlay(BuildContext _, OverlaySwipeProperties properties) {
    final itemIndex = properties.index % _suggestions.length;

    return CardOverlay(
      direction: properties.direction!,
      swipeProgress: properties.swipeProgress,
    );
  }

  void _listenToSuggestionBlocState(
      BuildContext context, SuggestionsState state) {
    state.maybeWhen(
      interactionError: (userId) {
        final snackbarState = ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed ')),
        );
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_suggestions.isEmpty) {
      return EmptySuggestion();
    }

    return BlocListener<SuggestionsBloc, SuggestionsState>(
      listener: _listenToSuggestionBlocState,
      child: Stack(
        children: [
          Positioned.fill(
            child: SwipableStack(
              itemCount: min(_defaultItemCount, _suggestions.length),
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
              overlayBuilder: _buildOverlay,
              swipeAnchor: SwipeAnchor.bottom,
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
