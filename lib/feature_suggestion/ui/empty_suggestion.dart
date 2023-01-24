import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

class EmptySuggestion extends StatelessWidget {
  const EmptySuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: lightBody(
        context,
        'You reached to the end of the new suggestions. Please come back later.',
        textAlign: TextAlign.center,
      ),
    );
  }
}
