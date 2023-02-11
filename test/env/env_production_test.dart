import 'package:workout_buddy_finder/env/env.dart';
import 'package:workout_buddy_finder/env/env_production.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Env env = ProductionEnv();

  test('Production env fields', () {
    assert(env.envType == Env.prodEnv);
    assert(env.appName == Env.prodAppName);
  });
}
