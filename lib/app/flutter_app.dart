import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../navigation/routes.dart';
import '../env/env.dart';
import '../auth/auth.dart';
import '../navigation/router.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';

class FlutterApp extends StatelessWidget {
  final String appName;
  final EnvType envType;

  const FlutterApp({
    required this.appName,
    required this.envType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: _onAuthStateChange,
        child: _wbfApp,
      ),
    );
  }

  Widget get _wbfApp => MaterialApp.router(
        title: appName,
        themeMode: ThemeMode.system,
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: router,
      );

  void _onAuthStateChange(BuildContext _, AuthState state) {
    if (state is AuthSignedInState) {
      router.go(rootRouteMap[RootRoute.suggestion]!);
    } else if (state is AuthSignedOutState) {
      router.go(fullScreenRouteMap[FullScreenRoute.login]!);
    }
  }
}
