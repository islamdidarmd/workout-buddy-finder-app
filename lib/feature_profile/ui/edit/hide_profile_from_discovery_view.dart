import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../di/service_locator.dart';
import '../../feature_profile.dart';

class HideProfileFromDiscoveryView extends StatelessWidget {
  const HideProfileFromDiscoveryView({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    final updateStatus = sl<UpdateProfileHiddenStatusUseCase>();

    return ContentCard(
      child: SwitchListTile(
        value: appUser.isHidden,
        onChanged: (bool value) {
          updateStatus(userId: appUser.userId, status: value);
        },
        title: const Text('Hide profile from discovery'),
      ),
    );
  }
}
