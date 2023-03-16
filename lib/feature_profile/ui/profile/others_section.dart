import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../../../di/service_locator.dart';
import '../../../feature_auth/ui/bloc/auth_cubit.dart';

class OthersSection extends StatelessWidget {
  const OthersSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  void _onLogout(BuildContext context) {
    context.read<AuthCubit>().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (_) => sl(),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mediumBoldTitle(context, 'Other'),
                const SizedBox(height: 8),
                Builder(
                  builder: (context) {
                    return ElevatedButton.icon(
                      onPressed: () => _onLogout(context),
                      icon: const Icon(FontAwesomeIcons.arrowRightFromBracket),
                      label: const Text('Log Out'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
