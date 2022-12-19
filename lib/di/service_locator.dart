import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'service_locator.config.dart';

late GetIt sl;

@InjectableInit(
  asExtension: false,
  initializerName: r'$InitGetIt',
  preferRelativeImports: true,
)
void configureDependencies({required GetIt getIt}) {
  sl = getIt;
  final result = $InitGetIt(sl);
}
