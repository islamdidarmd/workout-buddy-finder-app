import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SuggestionAction extends StatelessWidget {
  const SuggestionAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton.large(
            child: Icon(FontAwesomeIcons.xmark), onPressed: () {}),
        FloatingActionButton.large(
            child: Icon(FontAwesomeIcons.solidHeart), onPressed: () {}),
      ],
    );
  }
}
