import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_buddy_finder/ui/auth/login_page.dart';

import '../test_widget_wrapper.dart';

void main() {
  testWidgets('Login Page has title, inputs and login button', (tester) async {
    await tester.pumpWidget(TestWidgetWrapper(child: LoginPage()));
    final sloganFinder = find.byKey(ValueKey('Login Page Slogan'));
    final emailFinder = find.byKey(ValueKey('Email Input'));
    final passwordFinder = find.byKey(ValueKey('Password Input'));
    final loginButtonFinder = find.byKey(ValueKey('Login Button'));

    expect(sloganFinder, findsOneWidget);
    expect(emailFinder, findsOneWidget);
    expect(passwordFinder, findsOneWidget);
    expect(loginButtonFinder, findsOneWidget);
  });
}
