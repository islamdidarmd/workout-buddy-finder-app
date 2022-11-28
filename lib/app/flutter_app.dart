import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/env/env.dart';
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
    return MaterialApp.router(
      title: appName,
      themeMode: ThemeMode.system,
      theme: theme,
      darkTheme: darkTheme,
      routerConfig: router,
    );
  }
}
