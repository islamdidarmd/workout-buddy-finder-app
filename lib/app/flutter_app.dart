import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return _createApp();
  }

  Widget _createApp() {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: MaterialApp.router(
        title: appName,
        themeMode: ThemeMode.system,
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: router,
      ),
    );
  }
}
