import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:workout_buddy_finder/core/core.dart';

class EmptySuggestion extends StatelessWidget {
  const EmptySuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset('assets/lottie/empty-box-blue.json'),
          lightBody(
            context,
            'You reached to the end of the new suggestions. Please come back later.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
