import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:workout_buddy_finder/firebase_options.dart';
import 'constants.dart';
import 'package:firebase_core/firebase_core.dart';
import '../app/wbf_app.dart';
import '../di/service_locator.dart';

enum EnvType { Development, Production }

class Env {
  final EnvType envType = defaultEnv;
  final String appName = defaultAppName;

  void init({required GetIt slInstance}) {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies(getIt: slInstance);
  }

  Future<void> startApplication() async {
    final firebaseApp = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(WBFApp(envType: envType, appName: appName));
  }
}
