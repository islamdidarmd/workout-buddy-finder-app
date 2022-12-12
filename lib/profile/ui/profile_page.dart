import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/auth/auth.dart';
import 'package:workout_buddy_finder/profile/ui/info_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InfoSection(user: authBloc.appUser),
          ],
        ),
      ),
    );
  }
}
