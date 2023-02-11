import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../theme/theme_manager.dart';
import 'constants.dart';
import 'package:firebase_core/firebase_core.dart';
import '../app/wbf_app.dart';
import '../di/service_locator.dart';

enum EnvType { Development, Production }

class Env {
  final EnvType envType = defaultEnv;
  final String appName = defaultAppName;

  Future<void> init() async {
    final binding = WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
    await ThemeManager.instance.init();
  }

  Future<void> startApplication() async {
    final firebaseApp = await Firebase.initializeApp();
    runApp(WBFApp(envType: envType, appName: appName));
  }
}
