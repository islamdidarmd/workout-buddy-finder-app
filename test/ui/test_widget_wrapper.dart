import 'package:flutter/material.dart';

class TestWidgetWrapper extends StatelessWidget {
  final Widget child;

  const TestWidgetWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: child,
      ),
    );
  }
}
