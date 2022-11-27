import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/env/constants.dart';
import 'package:workout_buddy_finder/env/env.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  late final Env env = Env();

  test('Env fields are defaults', () {
    assert(env.appName == defaultAppName);
    assert(env.envType == defaultEnv);
  });

  test('Env initialization is successful', () {
    final GetIt sl = GetIt.asNewInstance();

    env.init(slInstance: sl);
    bool widgetsBindingInitialized = false;

    try {
      WidgetsBinding.instance;
      widgetsBindingInitialized = true;
    } catch (e) {
      widgetsBindingInitialized = false;
    }
    assert(widgetsBindingInitialized == true);
  });
}
