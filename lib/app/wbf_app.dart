import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/di/service_locator.dart';
import '../navigation/routes.dart';
import '../env/env.dart';
import '../auth/auth.dart';
import '../navigation/router.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';

class WBFApp extends StatelessWidget {
  final String appName;
  final EnvType envType;

  const WBFApp({
    required this.appName,
    required this.envType,
  });

  void _onAuthStateChange(BuildContext _, AuthState state) {
    if (state is AuthSignedInState) {
      router.go(rootRouteMap[RootRoute.suggestion]!);
    } else if (state is AuthSignedOutState) {
      router.go(fullScreenRouteMap[FullScreenRoute.login]!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (_) => sl(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: _onAuthStateChange,
        child: MaterialApp.router(
          title: appName,
          themeMode: ThemeMode.system,
          theme: theme,
          darkTheme: darkTheme,
          routerConfig: router,
        ),
      ),
    );
  }
}
