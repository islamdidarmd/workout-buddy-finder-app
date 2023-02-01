import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:workout_buddy_finder/core/core.dart';

class CompleteProfileMessageCard extends StatelessWidget {
  const CompleteProfileMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset('assets/lottie/person_writing.json'),
          const VerticalSpacing(),
          lightBody(
            context,
            "Please Complete your profile setup to get suggestions",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
