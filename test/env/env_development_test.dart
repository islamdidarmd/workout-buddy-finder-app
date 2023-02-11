import 'package:workout_buddy_finder/env/env.dart';
import 'package:workout_buddy_finder/env/env_development.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Env env = DevelopmentEnv();

  test('Development env fields', () {
    assert(env.envType == Env.devEnv);
    assert(env.appName == Env.devAppName);
  });
}
