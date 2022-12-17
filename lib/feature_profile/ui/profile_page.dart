import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../feature_navigation/routes.dart';
import '../../feature_auth/auth.dart';
import '../../di/service_locator.dart';
import 'bloc/profile_bloc.dart';
import 'info_section.dart';
import 'interest_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget _buildBody(BuildContext context, AppUser appUser) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                InfoSection(user: appUser),
                const SizedBox(height: 8),
                InterestSection(user: appUser)
              ],
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: FloatingActionButton(
                onPressed: () =>
                    context.push(rootRouteMap[RootRoute.profile_edit]!),
                child: Icon(FontAwesomeIcons.penToSquare),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => sl()..add(ProfileEvent.getUserProfile()),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const CircularProgressIndicator(),
            userProfileUpdated: (appUser) => _buildBody(context, appUser),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
