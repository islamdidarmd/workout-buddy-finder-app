import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../../../feature_auth/ui/ui.dart';

class OthersSection extends StatelessWidget {
  const OthersSection({Key? key}) : super(key: key);

  void _onLogout(BuildContext context) {
    context.read<AuthBloc>().add(AuthEvent.signOut());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumBoldTitle(context, 'Other'),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () => _onLogout(context),
                icon: const Icon(FontAwesomeIcons.arrowRightFromBracket),
                label: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
