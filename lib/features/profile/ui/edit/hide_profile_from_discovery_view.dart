import 'package:flutter/material.dart';

import '../../../../core/model/models.dart';
import '../../../../core/ui/shared/content_card.dart';
import '../../../../di/service_locator.dart';
import '../../domain/use_case/update_profile_hidden_status_use_case.dart';

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
