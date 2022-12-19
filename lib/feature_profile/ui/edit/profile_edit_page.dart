import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import 'interest_section.dart';

import '../../../di/service_locator.dart';
import '../bloc/profile_bloc.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return BlocProvider<ProfileBloc>(
      create: (_) => sl()..add(ProfileEvent.loadInterests(appUser)),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              AppBar(title: Text('Edit Profile')),
              InterestSection(appUser: appUser),
            ],
          ),
        ),
      ),
    );
  }
}
