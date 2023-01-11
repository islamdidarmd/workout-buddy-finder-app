import 'dart:core';

final initialRoute = rootRouteMap[RootRoute.suggestion];

enum RootRoute {
  suggestion,
  profile,
  profile_edit,
  chat,
  chat_room,
  settings,
}

enum FullScreenRoute { login, signup }

const Map<RootRoute, String> rootRouteMap = const {
  RootRoute.suggestion: "/suggestion",
  RootRoute.profile: "/profile",
  RootRoute.profile_edit: "edit",
  RootRoute.chat: "/chat",
  RootRoute.chat_room: "/chat/room/:chatRoomId",
  RootRoute.settings: "/settings",
};

const Map<FullScreenRoute, String> fullScreenRouteMap = const {
  FullScreenRoute.login: '/login',
  FullScreenRoute.signup: '/sign-up',
};
