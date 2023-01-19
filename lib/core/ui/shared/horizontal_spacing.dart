import 'package:flutter/material.dart';

class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing({
    Key? key,
    this.spacing = 8.0,
  }) : super(key: key);

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: spacing);
  }
}
