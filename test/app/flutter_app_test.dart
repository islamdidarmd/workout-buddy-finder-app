import 'package:workout_buddy_finder/env/constants.dart';
import 'package:workout_buddy_finder/di/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  final sl = GetIt.asNewInstance();
  setUp(() {
    configureDependencies(getIt: sl);
  });

  testWidgets('App runs and Homepage shows', (widgetTester) async {
    await widgetTester
        .pumpWidget(WBFApp(appName: defaultAppName, envType: defaultEnv));
    final titleFinder = find.text("Home");
    expect(titleFinder, findsOneWidget);
  });

  tearDown(() {
    sl.reset();
  });
}