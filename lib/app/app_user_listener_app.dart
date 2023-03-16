import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../core/model/models.dart';
import '../di/service_locator.dart';
import '../env/env.dart';
import '../feature_auth/feature_auth.dart';
import '../navigation/app_router.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';
import '../theme/theme_manager.dart';
import 'loading_app.dart';

class AppUserListenerApp extends HookWidget {
  const AppUserListenerApp({
    super.key,
    required this.appName,
    required this.envType,
  });

  final String appName;
  final EnvType envType;

  @override
  Widget build(BuildContext context) {
    final stream = useMemoized(() => sl<AppUserStreamUseCase>().execute());
    final appUserSnapShot = useStream(stream);
    final appUser = appUserSnapShot.data;

    if (appUser != null && !appUser.isEmpty) {
      return RepositoryProvider<AppUser>.value(
        value: appUser,
        child: MaterialApp.router(
          routerConfig: router,
          title: appName,
          theme: theme,
          darkTheme: darkTheme,
          themeMode: ThemeManager.instance.themeMode,
          debugShowCheckedModeBanner: false,
        ),
      );
    }

    return LoadingApp(appName: appName, envType: envType);
  }
}
