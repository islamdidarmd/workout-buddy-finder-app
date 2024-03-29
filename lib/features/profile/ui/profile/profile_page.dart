import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/core/core.dart';
import '../../../../di/service_locator.dart';
import 'activity_tracker_section.dart';
import 'edit_profile_button.dart';
import 'others_section.dart';
import '../bloc/profile_bloc.dart';

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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: AnimateList(
                    effects: [
                      SlideEffect(
                        duration: 300.milliseconds,
                        begin: const Offset(1.0, 0.0),
                        end: const Offset(0.0, 0.0),
                      ),
                    ],
                    interval: 50.milliseconds,
                    children: [
                      UserInfoSection(appUser: appUser),
                      const SizedBox(height: 8),
                      UserPreferences(appUser: appUser),
                      const SizedBox(height: 8),
                      UserInterestSection(appUser: appUser),
                      const SizedBox(height: 8),
                      ActivityTrackerSection(appUser: appUser),
                      const SizedBox(height: 8),
                      OthersSection(appUser: appUser),
                    ],
                  ),
                ),
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
