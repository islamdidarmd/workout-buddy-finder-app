import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../feature_auth/ui/ui.dart';
import 'routes.dart';
import '../feature_chat/chat.dart';
import '../feature_suggestion/suggestion.dart';
import '../feature_profile/profile.dart';
import '../feature_settings/settings.dart';
import '../core/core.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: rootRouteMap[RootRoute.suggestion],
  errorBuilder: (context, state) => ErrorIndicator(),
  redirect: (context, _) {
    final AuthBloc authBloc = context.read();
    if (authBloc.isSignedIn) {
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
        path: rootRouteMap[RootRoute.profile_edit]!,
        pageBuilder: (context, state) =>
            NoTransitionPage(child: ProfileEditPage()),
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
