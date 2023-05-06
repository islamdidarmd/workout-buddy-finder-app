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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: onDislike,
          child: const Icon(FontAwesomeIcons.xmark),
        ),
        const SizedBox(width: 48),
        FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: onLike,
          child: const Icon(FontAwesomeIcons.solidHandshake),
        ),
      ],
    );
  }
}
