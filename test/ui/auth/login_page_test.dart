import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_buddy_finder/ui/auth/login/login_page.dart';

import '../test_widget_wrapper.dart';

void main() {
  testWidgets('Login Page has title, inputs and login button', (tester) async {
    await tester.pumpWidget(TestWidgetWrapper(child: LoginPage()));
    final sloganFinder = find.byKey(ValueKey('Login Page Slogan'));

    expect(sloganFinder, findsOneWidget);
  });
}
