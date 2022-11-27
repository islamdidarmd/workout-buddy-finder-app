import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_buddy_finder/navigation/routes.dart';
import 'package:workout_buddy_finder/ui/chat/chat_page.dart';
import 'package:workout_buddy_finder/ui/home/home_page.dart';
import 'package:workout_buddy_finder/ui/profile/profile_page.dart';
import 'package:workout_buddy_finder/ui/settings/settings_page.dart';
import 'package:workout_buddy_finder/ui/shared/scaffold_with_bottom_nav/scaffold_with_bottom_nav.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: appRoutesMap[AppRoute.home],
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => ScaffoldWithBottomNav(child: child),
      routes: [
        GoRoute(
          path: appRoutesMap[AppRoute.home]!,
          pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
        ),
        GoRoute(
          path: appRoutesMap[AppRoute.profile]!,
          pageBuilder: (context, state) =>
              NoTransitionPage(child: ProfilePage()),
        ),
        GoRoute(
          path: appRoutesMap[AppRoute.chat]!,
          pageBuilder: (context, state) => NoTransitionPage(child: ChatPage()),
        ),
        GoRoute(
          path: appRoutesMap[AppRoute.settings]!,
          pageBuilder: (context, state) =>
              NoTransitionPage(child: SettingsPage()),
        ),
      ],
    )
  ],
);
