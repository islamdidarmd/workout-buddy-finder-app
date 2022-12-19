import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/core/core.dart';
import '../di/service_locator.dart';
import '../env/env.dart';
import '../feature_auth/ui/ui.dart';
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

  Widget _buildLoadingState() {
    return MaterialApp(
      title: appName,
      themeMode: ThemeMode.system,
      theme: theme,
      darkTheme: darkTheme,
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return MaterialApp(
      title: appName,
      themeMode: ThemeMode.system,
      theme: theme,
      darkTheme: darkTheme,
      home: Scaffold(
        body: const SizedBox(),
      ),
    );
  }

  Widget _buildApp(AppUser appUser) {
    return RepositoryProvider<AppUser>.value(
      value: appUser,
      child: MaterialApp.router(
        title: appName,
        themeMode: ThemeMode.system,
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: router,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (_) => sl(),
      child: Builder(
        builder: (context) {
          final authBloc = context.read<AuthBloc>();

          return StreamBuilder<AppUser>(
            stream: authBloc.appUserStream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return _buildLoadingState();
              } else if (snapshot.connectionState == ConnectionState.active &&
                  snapshot.hasData) {
                return _buildApp(snapshot.requireData);
              }

              return _buildEmptyState();
            },
          );
        },
      ),
    );
  }
}
