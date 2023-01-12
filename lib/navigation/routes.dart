import 'package:workout_buddy_finder/navigation/app_route.dart';

class EditProfileRoute extends ChildRoute {
  const EditProfileRoute() : super(route: 'edit-profile');

  String generateNavRoute({required String root}) {
    return '$root/edit-profile';
  }
}

class ChatRoomRoute extends ChildRoute {
  const ChatRoomRoute() : super(route: 'chat-room/:chatRoomId');

  String generateNavRoute({required String root, required String chatRoomId}) {
    return '$root/chat-room/$chatRoomId';
  }
}
