import 'package:flutter/material.dart';

import '../../model/models.dart';
import '../style/texts.dart';
import 'package:timeago/timeago.dart' as timeago;

class UserLastSeenView extends StatelessWidget {
  const UserLastSeenView({
    super.key,
    required this.appUser,
  });

  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    final buffer = StringBuffer();
    if (appUser.lastSeen != null) {
      buffer.write(timeago.format(appUser.lastSeen!));
    }

    return caption(
      context,
      'Last Online: ${buffer.toString()}',
    );
  }
}
