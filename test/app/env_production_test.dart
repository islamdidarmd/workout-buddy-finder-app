import 'package:workout_buddy_finder/app/constants.dart';
import 'package:workout_buddy_finder/env/env.dart';
import 'package:workout_buddy_finder/env/env_production.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Env env = ProductionEnv();

  test('Production env fields', () {
    assert(env.envType == prodEnv);
    assert(env.appName == prodAppName);
  });
}
