import 'env.dart';

void main() async {
  final env = ProductionEnv();
  await env.init();
  env.startApplication();
}

class ProductionEnv extends Env {
  @override
  EnvType get envType => Env.prodEnv;

  @override
  String get appName => Env.prodAppName;
}
