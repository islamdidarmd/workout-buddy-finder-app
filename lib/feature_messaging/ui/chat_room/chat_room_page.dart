import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart';
import '../../../di/service_locator.dart';
import 'message_input.dart';
import 'top_bar.dart';
import 'chat_room_messages_list.dart';
import '../../../core/core.dart';

class ChatRoomPage extends HookWidget {
  const ChatRoomPage({
    Key? key,
    required this.chatRoomId,
    required this.onVisitProfile,
  }) : super(key: key);

  final String chatRoomId;
  final void Function(String userId) onVisitProfile;

  Future<void> _onSendMessage(
    AppUser loggedInUser,
    TextEditingController controller,
  ) async {
    final repository = sl<MessagingRepository>();
    final text = controller.text;
    controller.clear();
    await repository.sendMessage(
      loggedInUser: loggedInUser,
      chatRoomId: chatRoomId,
      message: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    final loggedInUser = context.read<AppUser>();
    final textController = useTextEditingController();

    return Column(
      children: [
        TopBar(chatRoomId: chatRoomId, onVisitProfile: onVisitProfile),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: page_horizontal_spacing),
            child: ChatRoomMessagesList(chatRoomId: chatRoomId),
          ),
        ),
        Container(
          height: 80,
          padding:
              const EdgeInsets.symmetric(horizontal: page_horizontal_spacing),
          child: Row(
            children: [
              Expanded(child: MessageInput(controller: textController)),
              IconButton(
                onPressed: () => _onSendMessage(loggedInUser, textController),
                icon: Icon(FontAwesomeIcons.paperPlane),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
