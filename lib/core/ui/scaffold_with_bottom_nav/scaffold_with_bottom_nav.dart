import 'package:flutter/material.dart';
import 'bottom_nav.dart';

class ScaffoldWithBottomNav extends StatelessWidget {
  final Widget child;

  const ScaffoldWithBottomNav({
    Key? key,
    required this.child,
    required this.currentRoute,
    required this.onOpenSuggestion,
    required this.onOpenMessaging,
    required this.onOpenProfile,
    required this.onOpenSettings,
  }) : super(key: key);

  final String currentRoute;

  final void Function() onOpenSuggestion;
  final void Function() onOpenMessaging;
  final void Function() onOpenProfile;
  final void Function() onOpenSettings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const ValueKey('Scaffold'),
      body: child,
      bottomNavigationBar: BottomNav(
        key: const ValueKey('Bottom Nav'),
        currentRoute: currentRoute,
        onOpenSuggestion: onOpenSuggestion,
        onOpenMessaging: onOpenMessaging,
        onOpenProfile: onOpenProfile,
        onOpenSettings: onOpenSettings,
      ),
    );
  }
}
