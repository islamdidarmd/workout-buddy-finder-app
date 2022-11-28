import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';
import '../auth/auth.dart';
import '../ui/chat/chat_page.dart';
import '../suggestion/suggestion.dart';
import '../ui/profile/profile_page.dart';
import '../ui/settings/settings_page.dart';
import '../core/core.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: rootRouteMap[RootRoute.suggestion],
  errorBuilder: (context, state) => ErrorIndicator(),
  redirect: (context, _) {
    final authBloc = context.read<AuthBloc>();
    if (authBloc.state is AuthSignedInState) {
      return null;
    }
    return fullScreenRouteMap[FullScreenRoute.login];
  },
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
        pageBuilder: (context, state) => MaterialPage(child: SignInPage()),
      ),
      GoRoute(
        path: fullScreenRouteMap[FullScreenRoute.signup]!,
        pageBuilder: (context, state) => MaterialPage(child: SignUpPage()),
      ),
    ];
