import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../../widget_wrapper.dart';

main() {
  testWidgets('Builds and widget that has scaffold and bottom nav', (
    widgetTester,
  ) async {
    await widgetTester.pumpWidget(WidgetWrapper(
      child: ScaffoldWithBottomNav(
        currentRoute: "currentRoute",
        onOpenSuggestion: () => {},
        onOpenMessaging: () => {},
        onOpenProfile: () => {},
        onOpenSettings: () => {},
        child: const Text('', key: ValueKey("child")),
      ),
    ));
    final childFinder = find.byKey(const ValueKey("child"));
    final bottomNavFinder = find.byKey(const ValueKey("Bottom Nav"));
    expect(childFinder, findsOneWidget);
    expect(bottomNavFinder, findsOneWidget);
  });
}
