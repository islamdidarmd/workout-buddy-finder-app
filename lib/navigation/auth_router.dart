import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/ui/sign_in_page.dart';
import '../features/auth/ui/sign_up_page.dart';
import 'app_route.dart';

final _authNavigatorKey = GlobalKey<NavigatorState>();
final authRouter = GoRouter(
  navigatorKey: _authNavigatorKey,
  initialLocation: const TopLevelRoute.signIn().route,
  routes: _authRoutes,
);

List<GoRoute> get _authRoutes => [
      GoRoute(
        path: const TopLevelRoute.signIn().route,
        pageBuilder: (context, state) => const MaterialPage(child: SignInPage()),
      ),
      GoRoute(
        path: const TopLevelRoute.signUp().route,
        pageBuilder: (context, state) => const MaterialPage(child: SignUpPage()),
      ),
    ];
