import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../features/auth/domain/entity/user_auth_state.dart';
import '../features/auth/domain/use_case/auth_state_stream_use_case.dart';
import 'app_user_listener_app.dart';
import 'auth_app.dart';

import '../di/service_locator.dart';
import '../env/env.dart';
import 'loading_app.dart';

class AuthStateListenerApp extends HookWidget {
  const AuthStateListenerApp({
    super.key,
    required this.appName,
    required this.envType,
  });

  final String appName;
  final EnvType envType;

  @override
  Widget build(BuildContext context) {
    final stream = useMemoized(() => sl<AuthStateStreamUseCase>().execute());
    final authStatSnapShot = useStream(stream);
    final authState = authStatSnapShot.data;

    if (authState == UserAuthState.signedIn) {
      return AppUserListenerApp(appName: appName, envType: envType);
    } else if (authState == UserAuthState.signedOut) {
      return AuthApp(appName: appName);
    }

    return LoadingApp(appName: appName, envType: envType);
  }
}
