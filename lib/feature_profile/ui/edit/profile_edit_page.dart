import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'basic_info_section.dart';
import 'profile_picture_update_section.dart';
import 'edit_interest_section.dart';

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
    final loggedInUser = context.read<AppUser>();

    return BlocProvider<ProfileBloc>.value(
      value: profileBloc,
      child: Column(
        children: [
          AppBar(title: const Text('Edit Profile')),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: page_horizontal_spacing),
            child: Column(
              children: [
                const ProfilePictureUpdateSection(),
                const SizedBox(height: 16),
                BasicInfoSection(appUser: loggedInUser),
                const SizedBox(height: 16),
                const EditInterestSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
