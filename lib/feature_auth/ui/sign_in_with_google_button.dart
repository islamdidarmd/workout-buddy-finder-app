import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/core.dart';
import '../../di/service_locator.dart';
import '../../feature_location/location.dart';

import 'bloc/auth_cubit.dart';

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
      final result = context.read<AuthCubit>().signInWithGoogle(location);
    }
  }

  void _onAuthBlocStateChange(BuildContext context, AuthState state) {
    final result = state.maybeWhen(
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
    return BlocProvider<AuthCubit>(
      create: (context) => sl(),
      child: BlocConsumer<AuthCubit, AuthState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const AppLoadingIndicator(),
            signedIn: () => const SizedBox(),
            orElse: () {
              return ElevatedButton.icon(
                onPressed: () => _onContinue(context),
                icon: Icon(FontAwesomeIcons.google),
                label: Text('Continue with Google'),
              );
            },
          );
        },
        listener: _onAuthBlocStateChange,
      ),
    );
  }
}
