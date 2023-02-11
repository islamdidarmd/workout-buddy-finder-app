import 'package:workout_buddy_finder/env/constants.dart';
import 'package:get_it/get_it.dart';

import 'env.dart';

void main() async {
  final env = DevelopmentEnv();
  await env.init();
  env.startApplication();
}

class DevelopmentEnv extends Env {
  @override
  EnvType get envType => devEnv;

  @override
  String get appName => devAppName;
}
