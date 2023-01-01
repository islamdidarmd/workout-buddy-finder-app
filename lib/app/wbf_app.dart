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

  Widget buildAppBody(AuthBloc authBloc) {
    return StreamBuilder<AppUser>(
      stream: authBloc.appUserStream,
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoadingState();
        } else if (snapshot.connectionState == ConnectionState.active &&
            snapshot.hasData) {
          return _buildApp(snapshot.requireData);
        }

        return _buildEmptyState();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (_) => sl()..add(AuthEvent.initial()),
      child: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (_, current) {
          return current.maybeWhen(
            signedIn: () => true,
            signedOut: () => true,
            orElse: () => false,
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            signedIn: () => buildAppBody(context.read()),
            signedOut: () => buildAppBody(context.read()),
            orElse: () => _buildLoadingState(),
          );
          final authBloc = context.read<AuthBloc>();
        },
      ),
    );
  }
}
