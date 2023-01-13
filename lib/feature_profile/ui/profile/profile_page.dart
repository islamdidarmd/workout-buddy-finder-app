import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'edit_profile_button.dart';
import 'others_section.dart';
import '../../../di/service_locator.dart';
import '../bloc/profile_bloc.dart';
import '../../../core/ui/shared/info_section.dart';
import '../../../core/ui/shared/interest_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    required this.onEditProfile,
  }) : super(key: key);

  final Function() onEditProfile;

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return BlocProvider<ProfileBloc>(
      create: (_) => sl(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                children: [
                  InfoSection(appUser: appUser),
                  const SizedBox(height: 8),
                  InterestSection(appUser: appUser),
                  const SizedBox(height: 8),
                  OthersSection(appUser: appUser),
                ],
              ),
              Positioned(
                right: 0,
                bottom: 16,
                child: EditProfileButton(onEditProfile: onEditProfile),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
