import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../navigation/routes.dart';
import 'bottom_nav_item.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
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

  int _getIndexForLocation(String currentRoute) {
    if (currentRoute.startsWith('/suggestion')) {
      return 0;
    } else if (currentRoute.startsWith('/messaging')) {
      return 1;
    } else if (currentRoute.startsWith('/profile')) {
      return 2;
    } else if (currentRoute.startsWith('/settings')) {
      return 3;
    }

    return 0;
  }

  void _onDestinationSelected(int index) {
    switch (index) {
      case 0:
        onOpenSuggestion();
        break;
      case 1:
        onOpenMessaging();
        break;
      case 2:
        onOpenProfile();
        break;
      case 3:
        onOpenSettings();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      selectedIndex: _getIndexForLocation(currentRoute),
      destinations: [
        BottomNavItem(
          icon: Icon(FontAwesomeIcons.compass),
          label: 'Suggestions',
        ),
        BottomNavItem(
          icon: Icon(FontAwesomeIcons.envelope),
          label: 'Messaging',
        ),
        BottomNavItem(
          icon: Icon(FontAwesomeIcons.user),
          label: 'My Profile',
        ),
        BottomNavItem(
          icon: Icon(FontAwesomeIcons.gear),
          label: 'Settings',
        ),
      ],
      onDestinationSelected: _onDestinationSelected,
    );
  }
}
