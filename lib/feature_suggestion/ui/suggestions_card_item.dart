import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart';

import 'suggsetion_action.dart';

class SuggestionsCardItem extends StatelessWidget {
  final double overlayColorOpacity = 0.4;
  final Suggestion suggestion;

  const SuggestionsCardItem({
    Key? key,
    required this.suggestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraintType) {
        final size = constraintType.biggest;
        print(size);
        final radius = size.width * 0.08;

        return Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 32),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                  image: NetworkImage(suggestion.profilePicture),
                  fit: BoxFit.cover,
                ),
              ),
              foregroundDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(radius),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(overlayColorOpacity),
                    Colors.transparent,
                  ],
                  stops: [
                    0.0,
                    0.5,
                  ],
                ),
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
      },
    );
  }
}
