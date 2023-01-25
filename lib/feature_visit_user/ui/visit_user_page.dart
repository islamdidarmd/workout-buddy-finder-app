import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../domain/domain.dart';
import '../../core/core.dart';
import '../../di/service_locator.dart';

class VisitUserPage extends HookWidget {
  const VisitUserPage({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final String userId;

  List<Widget> _getUserAttributeSection(AppUser appUser) => [
        UserInfoSection(appUser: appUser),
        const SizedBox(height: 8),
        UserPreferences(appUser: appUser),
        const SizedBox(height: 8),
        UserInterestSection(appUser: appUser),
        const SizedBox(height: 8),
      ];

  @override
  Widget build(BuildContext context) {
    final appUserFuture = useMemoized(
      () => sl<VisitUserRepository>().getAppUserFromId(userId: userId),
    );
    final userSnapShot = useFuture(appUserFuture);

    final AppUser? user = userSnapShot.data;

    return Column(
      children: [
        if (userSnapShot.connectionState == ConnectionState.waiting) ...{
          AppBar(),
          LinearProgressIndicator(),
        } else if (userSnapShot.hasData && user != null) ...{
          AppBar(title: Text(user.name)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: page_horizontal_spacing),
            child: Column(
              children: _getUserAttributeSection(user),
            ),
          ),
        },
      ],
    );
  }
}
