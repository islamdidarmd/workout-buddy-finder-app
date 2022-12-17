import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  final double avatarSize = 35;
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hello Didarul',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Icon(Icons.account_circle, size: avatarSize),
      ],
    );
  }
}
