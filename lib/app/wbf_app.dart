import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart';
import 'package:workout_buddy_finder/theme/theme_manager.dart';
import '../di/service_locator.dart';
import '../env/env.dart';
import '../navigation/app_router.dart';
import '../navigation/auth_router.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';

class WBFApp extends HookWidget {
  final String appName;
  final EnvType envType;

  const WBFApp({
    required this.appName,
    required this.envType,
  });

  Widget _buildLoadingApp() {
    return MaterialApp(
      home: Scaffold(body: SafeArea(child: AppLoadingIndicator())),
      title: appName,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildAuthApp() {
    return MaterialApp.router(
      routerConfig: authRouter,
      title: appName,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildSignedInApp(AppUser appUser) {
    if (appUser.isEmpty) {
      return MaterialApp.router(
        routerConfig: authRouter,
        title: appName,
        theme: theme,
        darkTheme: darkTheme,
        themeMode: ThemeManager.instance.themeMode,
        debugShowCheckedModeBanner: false,
      );
    }

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

  @override
  Widget build(BuildContext context) {
    final themeManager = useListenable(ThemeManager.instance);
    final authStateStream =
        useMemoized(() => sl<AuthStateStreamUseCase>().call());
    final authStatSnapShot = useStream(authStateStream);
    if (authStatSnapShot.connectionState == ConnectionState.waiting) {
      return _buildLoadingApp();
    }

    final appUserStream = useMemoized(() => sl<AppUserStreamUseCase>().call());
    final appUserSnapShot = useStream(appUserStream);
    final appUser = appUserSnapShot.data;
    if (appUserSnapShot.connectionState == ConnectionState.waiting) {
      return _buildLoadingApp();
    } else if (appUser?.isEmpty == true) {
      return _buildSignedInApp(appUser!);
    }

    return _buildAuthApp();
  }
}
