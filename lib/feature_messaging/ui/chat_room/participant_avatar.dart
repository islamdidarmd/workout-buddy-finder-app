import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../shared/user_avatar.dart';

import '../../../di/service_locator.dart';
import '../../domain/repository/messaging_repository.dart';

class ParticipantAvatar extends HookWidget {
  const ParticipantAvatar({
    Key? key,
    required this.participantId,
  }) : super(key: key);
  final String participantId;

  @override
  Widget build(BuildContext context) {
    final participantFuture = useMemoized(
      () => sl<MessagingRepository>().getParticipantFromID(
        userId: participantId,
      ),
    );
    final participantSnapshot = useFuture(participantFuture);
    if (participantSnapshot.hasData) {
      final participant = participantSnapshot.requireData;

      return UserAvatar(
        profilePicture: participant?.profilePicture ?? '',
      );
    }

    return UserAvatar(profilePicture: '');
  }
}
