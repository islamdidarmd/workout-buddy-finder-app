import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_buddy_finder/navigation/routes.dart';
import 'bottom_nav_item.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _getIndexForLocation(GoRouter.of(context).location),
      items: _bottomNavItems,
      onTap: (index) => context.go(_getLocationForIndex(index)),
    );
  }

  List<BottomNavItem> get _bottomNavItems => [
        BottomNavItem(
          initialLocation: appRoutesMap[AppRoute.home]!,
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavItem(
          initialLocation: appRoutesMap[AppRoute.profile]!,
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        ),
        BottomNavItem(
          initialLocation: appRoutesMap[AppRoute.chat]!,
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavItem(
          initialLocation: appRoutesMap[AppRoute.settings]!,
          icon: Icon(Icons.settings),
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
