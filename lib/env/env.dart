import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../theme/theme_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import '../app/wbf_app.dart';
import '../di/service_locator.dart';

/// ignore_for_file: prefer-match-file-name.
enum EnvType { Development, Production }

class Env {
  static const defaultAppName = 'Workout Buddy Finder';
  static const defaultEnv = EnvType.Development;

  static const devAppName = 'Workout Buddy Finder Dev';
  static const devEnv = EnvType.Development;

  static const prodAppName = 'Workout Buddy Finder';
  static const prodEnv = EnvType.Production;

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
