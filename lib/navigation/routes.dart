import 'dart:core';

final initialRoute = rootRouteMap[RootRoute.suggestion];

enum RootRoute {
  suggestion,
  profile,
  chat,
  settings,
}

enum FullScreenRoute { login, signup }

const Map<RootRoute, String> rootRouteMap = const {
  RootRoute.suggestion: "/suggestion",
  RootRoute.profile: "/profile",
  RootRoute.chat: "/chat",
  RootRoute.settings: "/settings",
};

const Map<FullScreenRoute, String> fullScreenRouteMap = const {
  FullScreenRoute.login: '/login',
  FullScreenRoute.signup: '/sign-up',
};
