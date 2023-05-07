import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../core/model/models.dart';
import '../../../core/size_constant.dart';
import '../../../core/ui/shared/app_loading_indicator.dart';
import '../../../core/ui/shared/user_info_section.dart';
import '../../../core/ui/shared/user_interest_section.dart';
import '../../../core/ui/shared/user_preferences.dart';
import '../../../di/service_locator.dart';
import '../../auth/domain/use_case/get_user_profile_from_id_use_case.dart';

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
      () => sl<GetUserProfileFromIdUseCase>().execute(uid: userId),
    );
    final userSnapShot = useFuture(appUserFuture);

    final AppUser? user = userSnapShot.data;

    return Column(
      children: [
        if (userSnapShot.connectionState == ConnectionState.waiting) ...{
          AppBar(),
          const AppLoadingIndicator(),
        } else if (userSnapShot.hasData && user != null) ...{
          AppBar(title: Text(user.name)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: page_horizontal_spacing),
            child: Column(
              children: AnimateList(
                children: _getUserAttributeSection(user),
                effects: [
                  SlideEffect(
                    duration: 300.milliseconds,
                    begin: const Offset(1.0, 0.0),
                    end: const Offset(0.0, 0.0),
                  ),
                ],
                interval: 50.milliseconds,
              ),
            ),
          ),
        },
      ],
    );
  }
}
