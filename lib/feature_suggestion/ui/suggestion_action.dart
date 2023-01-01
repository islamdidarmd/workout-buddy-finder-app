import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SuggestionAction extends StatelessWidget {
  const SuggestionAction({
    Key? key,
    required this.onLike,
    required this.onDislike,
  }) : super(key: key);

  final Function() onLike;
  final Function() onDislike;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton.large(
          child: Icon(FontAwesomeIcons.xmark),
          onPressed: onDislike,
        ),
        FloatingActionButton.large(
          child: Icon(FontAwesomeIcons.solidHeart),
          onPressed: onLike,
        ),
      ],
    );
  }
}
