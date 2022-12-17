import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/service_locator.dart';
import 'bloc/profile_bloc.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _) {
    return BlocProvider<ProfileBloc>(
      create: (_) => sl()..add(ProfileEvent.loadInterests()),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              AppBar(
                title: Text('Edit Profile'),
              ),
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (_, state) {
                  return state.maybeWhen(
                    loading: () => CircularProgressIndicator(),
                    interestsLoaded: (interestList) => Wrap(
                      children: interestList
                          .map((e) => ChoiceChip(
                                avatar: CircleAvatar(),
                                selected: false,
                                label: Text(e.name),
                              ))
                          .toList(),
                    ),
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
