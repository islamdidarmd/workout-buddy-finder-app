import 'package:flutter/cupertino.dart';
import 'package:workout_buddy_finder/app/constants.dart';
import 'package:workout_buddy_finder/app/flutter_app.dart';
import 'package:workout_buddy_finder/app/service_locator.dart';
import 'package:workout_buddy_finder/data/model/models.dart';
import 'package:workout_buddy_finder/domain/domain.dart';
import 'package:workout_buddy_finder/ui/home/repo_list_item.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

import '../../data/model/mocks/owner_mock_json.dart';
import '../test_widget_wrapper.dart';

void main() {
  late Repository repository;
  final GetIt sl = GetIt.instance;

  setUp(() {
    sl.reset();
    configureDependencies(getIt: sl);
    repository = Repository(
      id: 123,
      name: "name",
      owner: OwnerModel.fromJson(ownerJson).toEntity(),
      private: false,
      repoLink: "repoLink",
      description: "description",
      topics: [],
    );
  });

  testWidgets('Homepage Query Input is visible', (widgetTester) async {
    await widgetTester.pumpWidget(FlutterApp(
      appName: defaultAppName,
      envType: defaultEnv,
    ));
    expect(find.byKey(ValueKey('Query Input')), findsOneWidget);
  });

  testWidgets('Repository List Item is visible', (widgetTester) async {
    await widgetTester.pumpWidget(
      TestWidgetWrapper(
        child: RepoListItem(
          repository: repository,
        ),
      ),
    );

    expect(find.byKey(ValueKey(123)), findsOneWidget);
  });
}
