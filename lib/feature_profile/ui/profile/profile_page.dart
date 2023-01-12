import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_buddy_finder/feature_profile/ui/profile/others_section.dart';
import '../../../feature_auth/ui/ui.dart';
import '../../../navigation/routes.dart';
import '../../../di/service_locator.dart';
import '../bloc/profile_bloc.dart';
import 'info_section.dart';
import 'interest_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    required this.onEditProfile,
  }) : super(key: key);

  final Function() onEditProfile;

  Widget _buildBody(BuildContext _) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                const InfoSection(),
                const SizedBox(height: 8),
                InterestSection(),
                const SizedBox(height: 8),
                const OthersSection(),
              ],
            ),
            Positioned(
              right: 0,
              bottom: 16,
              child: FloatingActionButton(
                onPressed: onEditProfile,
                heroTag: 'edit',
                child: const Icon(FontAwesomeIcons.penToSquare),
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
      create: (_) => sl(),
      child: _buildBody(context),
    );
  }
}
