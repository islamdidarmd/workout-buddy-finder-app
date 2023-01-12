import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../feature_auth/ui/ui.dart';
import 'app_route.dart';

final _authNavigatorKey = GlobalKey<NavigatorState>();
final authRouter = GoRouter(
  navigatorKey: _authNavigatorKey,
  initialLocation: TopLevelRoute.signIn().route,
  routes: _authRoutes,
);

List<GoRoute> get _authRoutes => [
      GoRoute(
        path: TopLevelRoute.signIn().route,
        pageBuilder: (context, state) => MaterialPage(child: SignInPage()),
      ),
      GoRoute(
        path: TopLevelRoute.signUp().route,
        pageBuilder: (context, state) => MaterialPage(child: SignUpPage()),
      ),
    ];
