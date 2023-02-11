import 'env.dart';

void main() async {
  final env = DevelopmentEnv();
  await env.init();
  env.startApplication();
}

class DevelopmentEnv extends Env {
  @override
  EnvType get envType => Env.devEnv;

  @override
  String get appName => Env.devAppName;
}
