import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _logo,
              const SizedBox(height: 20),
              _slogan(context),
              const SizedBox(height: 20),
              _subSlogan(context),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _logo => Image.asset('assets/icon/app_logo.png');

  Widget _slogan(BuildContext context) => Text(
        key: ValueKey('Login Page Slogan'),
        'Welcome to Fitness Buddy Finder',
        style: Theme.of(context).textTheme.titleLarge,
      );

  Widget _subSlogan(BuildContext context) => Text(
        'Login to see nearby fitness enthusiasts',
        style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 16),
      );
}
