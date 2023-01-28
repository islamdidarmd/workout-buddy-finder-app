import 'package:flutter/material.dart';

import '../core/ui/shared/app_loading_indicator.dart';
import '../env/env.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';
import '../theme/theme_manager.dart';

class LoadingApp extends StatelessWidget {
  const LoadingApp({
    Key? key,
    required this.appName,
    required this.envType,
  }) : super(key: key);
  final String appName;
  final EnvType envType;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: SafeArea(child: AppLoadingIndicator())),
      title: appName,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
