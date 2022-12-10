import 'package:flutter/material.dart';

class BottomNavItem extends NavigationDestination {
  final String initialLocation;

  const BottomNavItem({
    required this.initialLocation,
    required super.icon,
    required super.label,
  });
}
