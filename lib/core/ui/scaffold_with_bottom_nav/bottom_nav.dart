import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_buddy_finder/navigation/routes.dart';
import 'bottom_nav_item.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _getIndexForLocation(GoRouter.of(context).location),
      items: _bottomNavItems,
      onTap: (index) => context.go(_getLocationForIndex(index)),
    );
  }

  List<BottomNavItem> get _bottomNavItems => [
        BottomNavItem(
          initialLocation: rootRouteMap[RootRoute.suggestion]!,
          icon: Icon(FontAwesomeIcons.compass),
          label: 'Suggestions',
        ),
        BottomNavItem(
          initialLocation: rootRouteMap[RootRoute.profile]!,
          icon: Icon(FontAwesomeIcons.user),
          label: 'Profile',
        ),
        BottomNavItem(
          initialLocation: rootRouteMap[RootRoute.chat]!,
          icon: Icon(FontAwesomeIcons.envelope),
          label: 'Chat',
        ),
        BottomNavItem(
          initialLocation: rootRouteMap[RootRoute.settings]!,
          icon: Icon(FontAwesomeIcons.sliders),
          label: 'Settings',
        ),
      ];

  int _getIndexForLocation(String location) {
    for (int i = 0; i < _bottomNavItems.length; i++) {
      if (location.startsWith(_bottomNavItems[i].initialLocation)) {
        return i;
      }
    }
    return 0;
  }

  String _getLocationForIndex(int index) {
    return _bottomNavItems[index].initialLocation;
  }
}
