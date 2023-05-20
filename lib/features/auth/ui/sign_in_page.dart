import 'package:flutter/material.dart';
import 'sign_in_with_google_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  String get _logo => 'assets/icon/app_logo.png';

  Widget _slogan(BuildContext context) => Text(
        'Welcome to Workout Buddy Finder',
        key: const ValueKey('Login Page Slogan'),
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );

  Widget _subSlogan(BuildContext context) => Text(
        'Login to see nearby fitness enthusiasts',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(_logo, height: 120, width: 120),
              const SizedBox(height: 20),
              _slogan(context),
              const SizedBox(height: 8),
              _subSlogan(context),
              const SizedBox(height: 60),
              const SignInWithGoogleButton()
            ],
          ),
        ),
      ),
    );
  }
}
