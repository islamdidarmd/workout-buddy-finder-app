import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/env/env.dart';

class WidgetWrapper extends StatelessWidget {
  final Widget child;

  const WidgetWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Env.defaultAppName,
      home: child,
    );
  }
}
