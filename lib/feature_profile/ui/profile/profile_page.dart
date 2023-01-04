import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../feature_auth/ui/ui.dart';
import '../../../navigation/routes.dart';
import '../../../di/service_locator.dart';
import '../bloc/profile_bloc.dart';
import 'info_section.dart';
import 'interest_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                InfoSection(),
                const SizedBox(height: 8),
                InterestSection(),
              ],
            ),
            Positioned(
              right: 0,
              bottom: 16,
              child: Column(
                children: [
                  FloatingActionButton(
                    onPressed: () => _onLogout(context),
                    heroTag: 'logout',
                    child: Icon(FontAwesomeIcons.arrowRightFromBracket),
                  ),
                  const SizedBox(height: 16),
                  FloatingActionButton(
                    onPressed: () =>
                        context.push(rootRouteMap[RootRoute.profile_edit]!),
                    heroTag: 'edit',
                    child: Icon(FontAwesomeIcons.penToSquare),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onLogout(BuildContext context) {
    context.read<AuthBloc>().add(AuthEvent.signOut());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) => sl(),
      child: _buildBody(context),
    );
  }
}
