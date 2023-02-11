import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/env/env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Env env = Env();

  test('Env fields are defaults', () {
    assert(env.appName == Env.defaultAppName);
    assert(env.envType == Env.defaultEnv);
  });

  test('Env initialization is successful', () {
    env.init();
    bool widgetsBindingInitialized = false;

    try {
      final binding = WidgetsBinding.instance;
      widgetsBindingInitialized = true;
    } catch (e) {
      widgetsBindingInitialized = false;
    }
    assert(widgetsBindingInitialized);
  });
}
