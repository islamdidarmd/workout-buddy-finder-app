import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'auth_state_listener_app.dart';
import '../theme/theme_manager.dart';
import '../env/env.dart';

class WBFApp extends HookWidget {
  final String appName;
  final EnvType envType;

  WBFApp({
    required this.appName,
    required this.envType,
  });

  @override
  Widget build(BuildContext context) {
    final themeManager = useListenable(ThemeManager.instance);

    return AuthStateListenerApp(appName: appName, envType: envType);
  }
}
