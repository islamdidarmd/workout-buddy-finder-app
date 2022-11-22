import 'package:workout_buddy_finder/app/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  test('Service locator is set up', () async {
    final sl = GetIt.instance;
    setUpDependencies(slInstance: sl);
    assert(sl.allReadySync());
  });
}