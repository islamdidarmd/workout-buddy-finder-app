import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import 'interest_section.dart';

import '../../../di/service_locator.dart';
import '../bloc/profile_bloc.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  void _onProfileBlocStateChange(BuildContext context, ProfileState state) {
    final result = state.maybeWhen(
      userProfileUpdated: (appUser) =>
          context.read<ProfileBloc>()..add(ProfileEvent.loadInterests(appUser)),
      orElse: () {},
    );
  }

  Widget _buildBody(BuildContext _, AppUser appUser) {
    return Column(
      children: [
        InterestSection(appUser: appUser),
      ],
    );
  }

  @override
  Widget build(BuildContext _) {
    return BlocProvider<ProfileBloc>.value(
      value: sl()..add(ProfileEvent.getUserProfile()),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              AppBar(title: Text('Edit Profile')),
              BlocConsumer<ProfileBloc, ProfileState>(
                buildWhen: (previous, current) => current.maybeWhen(
                  userProfileUpdated: (user) => true,
                  orElse: () => false,
                ),
                listener: _onProfileBlocStateChange,
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => CircularProgressIndicator(),
                    userProfileUpdated: (appUser) =>
                        _buildBody(context, appUser),
                    error: (error) => Text(error.message),
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
