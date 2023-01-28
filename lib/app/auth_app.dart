import 'package:flutter/material.dart';

import '../navigation/auth_router.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';
import '../theme/theme_manager.dart';

class AuthApp extends StatelessWidget {
  const AuthApp({
    super.key,
    required this.appName,
  });

  final String appName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: authRouter,
      title: appName,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}