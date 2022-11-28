import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _logo,
              const SizedBox(height: 20),
              _slogan(context),
              const SizedBox(height: 8),
              _subSlogan(context),
              const SizedBox(height: 60),
              ElevatedButton.icon(
                onPressed: () => {},
                label: Text('Continue with Google'),
                icon: Icon(FontAwesomeIcons.google),
              )
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
