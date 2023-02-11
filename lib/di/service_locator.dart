import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'service_locator.config.dart';

final GetIt sl = GetIt.instance;

@InjectableInit(initializerName: 'initGetIt', preferRelativeImports: true)
void configureDependencies() {
  final result = sl.initGetIt();
}
