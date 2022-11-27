import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_buddy_finder/navigation/routes.dart';
import 'package:workout_buddy_finder/ui/auth/login_page.dart';
import 'package:workout_buddy_finder/ui/auth/sign_up_page.dart';
import 'package:workout_buddy_finder/ui/chat/chat_page.dart';
import 'package:workout_buddy_finder/ui/suggestion/suggestions_page.dart';
import 'package:workout_buddy_finder/ui/profile/profile_page.dart';
import 'package:workout_buddy_finder/ui/settings/settings_page.dart';
import 'package:workout_buddy_finder/ui/shared/error_indicator.dart';
import 'package:workout_buddy_finder/ui/shared/scaffold_with_bottom_nav/scaffold_with_bottom_nav.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: rootRouteMap[RootRoute.suggestion],
  errorBuilder: (context, state) => ErrorIndicator(),
  redirect: (context, state) => fullScreenRouteMap[FullScreenRoute.login],
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => ScaffoldWithBottomNav(child: child),
      routes: _rootRoutes,
    ),
    ..._authRoutes,
  ],
);

List<GoRoute> get _rootRoutes => [
      GoRoute(
        path: rootRouteMap[RootRoute.suggestion]!,
        pageBuilder: (context, state) =>
            NoTransitionPage(child: SuggestionsPage()),
      ),
      GoRoute(
        path: rootRouteMap[RootRoute.profile]!,
        pageBuilder: (context, state) => NoTransitionPage(child: ProfilePage()),
      ),
      GoRoute(
        path: rootRouteMap[RootRoute.chat]!,
        pageBuilder: (context, state) => NoTransitionPage(child: ChatPage()),
      ),
      GoRoute(
        path: rootRouteMap[RootRoute.settings]!,
        pageBuilder: (context, state) =>
            NoTransitionPage(child: SettingsPage()),
      ),
    ];

List<GoRoute> get _authRoutes => [
      GoRoute(
        path: fullScreenRouteMap[FullScreenRoute.login]!,
        pageBuilder: (context, state) => MaterialPage(child: LoginPage()),
      ),
      GoRoute(
        path: fullScreenRouteMap[FullScreenRoute.signup]!,
        pageBuilder: (context, state) => MaterialPage(child: SignUpPage()),
      ),
    ];
