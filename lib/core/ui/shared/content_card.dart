import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  ContentCard({
    Key? key,
    required this.child,
    this.width,
    this.height,
  }) : super(key: key);

  final Widget child;
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: child,
      ),
    );
  }
}
