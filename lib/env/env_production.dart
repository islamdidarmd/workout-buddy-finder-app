import 'package:workout_buddy_finder/env/constants.dart';
import 'package:get_it/get_it.dart';

import 'env.dart';

void main() async {
  final env = ProductionEnv();
  await env.init();
  env.startApplication();
}

class ProductionEnv extends Env {
  @override
  EnvType get envType => prodEnv;

  @override
  String get appName => prodAppName;
}
