import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:workout_buddy_finder/location/location.dart';

import 'bloc/auth_bloc.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({Key? key}) : super(key: key);

  void _onContinue(BuildContext context) async {
    final Position? location = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: LocationRetrieverDialog(),
        );
      },
    );

    if (location != null) {
      context
          .read<AuthBloc>()
          .add(AuthSignInWithGoogleEvent(location: location));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (_, state) {
        if (state is AuthLoadingState) {
          return CircularProgressIndicator();
        } else if (state is AuthSignedInState) {
          return const SizedBox();
        }

        return ElevatedButton.icon(
          onPressed: () => _onContinue(context),
          label: Text('Continue with Google'),
          icon: Icon(FontAwesomeIcons.google),
        );
      },
    );
  }
}
