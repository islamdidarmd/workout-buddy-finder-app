import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  final String initialLocation;

  const BottomNavItem({
    required this.initialLocation,
    required super.icon,
    required super.label,
  });
}
