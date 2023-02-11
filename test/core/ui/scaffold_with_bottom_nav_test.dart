import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../../widget_wrapper.dart';

main() {
  testWidgets('Builds and widget that has scaffold and bottom nav', (
    widgetTester,
  ) async {
    final result = await widgetTester.pumpWidget(WidgetWrapper(
      child: ScaffoldWithBottomNav(
        child: Text('', key: ValueKey("child")),
        currentRoute: "currentRoute",
        onOpenSuggestion: () => {},
        onOpenMessaging: () => {},
        onOpenProfile: () => {},
        onOpenSettings: () => {},
      ),
    ));
    final childFinder = find.byKey(ValueKey("child"));
    expect(childFinder, findsOneWidget);
  });
}
