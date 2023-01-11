import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_messaging/ui/messges/message_list.dart';

import '../../domain/domain.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({Key? key}) : super(key: key);

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return BaseFeatureLayout(
      child: Column(
        children: [
          AppBar(title: Text('Messages')),
          const SizedBox(height: 12),
          Expanded(child: MessageList(appUser: appUser, )),
        ],
      ),
    );
  }
}
