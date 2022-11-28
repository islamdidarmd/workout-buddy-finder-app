import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bloc/auth_bloc.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (_, state) {
        if (state is AuthLoadingState) {
          return CircularProgressIndicator();
        } else if (state is AuthSignedOutState) {
          return ElevatedButton.icon(
            onPressed: () =>
                context.read<AuthBloc>().add(AuthSignInWithGoogleEvent()),
            label: Text('Continue with Google'),
            icon: Icon(FontAwesomeIcons.google),
          );
        }
        return const SizedBox();
      },
    );
  }
}
