import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_picture_update_section.dart';
import 'interest_section.dart';

import '../../../di/service_locator.dart';
import '../bloc/profile_bloc.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final profileBloc = sl<ProfileBloc>();

  @override
  void initState() {
    super.initState();
    profileBloc.add(ProfileEvent.loadInterests(context.read()));
  }

  @override
  void dispose() {
    profileBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>.value(
      value: profileBloc,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              AppBar(title: const Text('Edit Profile')),
              const ProfilePictureUpdateSection(),
              const SizedBox(height: 16),
              const InterestSection(),
            ],
          ),
        ),
      ),
    );
  }
}
