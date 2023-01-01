import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart';

class SuggestionsCardItem extends StatelessWidget {
  final double overlayColorOpacity = 0.4;
  final Suggestion suggestion;

  const SuggestionsCardItem({
    Key? key,
    required this.suggestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final radius = size.width * 0.08;

    return Container(
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
    );
  }
}
