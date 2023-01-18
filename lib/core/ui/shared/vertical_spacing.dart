import 'package:flutter/material.dart';

class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    Key? key,
    this.spacing = 8.0,
  }) : super(key: key);

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: spacing);
  }
}
