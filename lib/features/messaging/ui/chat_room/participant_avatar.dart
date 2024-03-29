import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../di/service_locator.dart';
import '../../../auth/domain/use_case/get_user_profile_from_id_use_case.dart';
import '../shared/user_avatar.dart';


class ParticipantAvatar extends HookWidget {
  const ParticipantAvatar({
    Key? key,
    required this.participantId,
  }) : super(key: key);
  final String participantId;

  @override
  Widget build(BuildContext context) {
    final participantFuture = useMemoized(
      () => sl<GetUserProfileFromIdUseCase>().execute(uid: participantId),
    );
    final participantSnapshot = useFuture(participantFuture);
    if (participantSnapshot.hasData) {
      final participant = participantSnapshot.requireData;

      return UserAvatar(
        profilePicture: participant?.profilePicture ?? '',
      );
    }

    return const UserAvatar(profilePicture: '');
  }
}
