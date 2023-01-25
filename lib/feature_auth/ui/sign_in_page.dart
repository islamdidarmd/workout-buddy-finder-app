import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/auth_bloc.dart';
import 'sign_in_with_google_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String get _logo => 'assets/icon/app_logo.png';

  Widget _slogan(BuildContext context) => Text(
        key: ValueKey('Login Page Slogan'),
        'Welcome to Fitness Buddy Finder',
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );

  Widget _subSlogan(BuildContext context) => Text(
        'Login to see nearby fitness enthusiasts',
        style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 16),
      );

  void _onAuthBlocStateChange(BuildContext context, AuthState state) {
    state.maybeWhen(
      signInFailure: (error) {
        final scaffoldController = ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message)),
        );
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
          listener: _onAuthBlocStateChange,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(_logo, height: 120, width: 120),
                const SizedBox(height: 20),
                _slogan(context),
                const SizedBox(height: 8),
                _subSlogan(context),
                const SizedBox(height: 60),
                SignInWithGoogleButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
