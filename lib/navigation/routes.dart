import 'dart:core';

final initialRoute = rootRouteMap[RootRoute.suggestion];

enum RootRoute {
  suggestion,
  profile,
  profile_details,
  chat,
  settings,
}

enum FullScreenRoute { login, signup }

const Map<RootRoute, String> rootRouteMap = const {
  RootRoute.suggestion: "/suggestion",
  RootRoute.profile: "/profile",
  RootRoute.profile_details: "/profile/details",
  RootRoute.chat: "/chat",
  RootRoute.settings: "/settings",
};

const Map<FullScreenRoute, String> fullScreenRouteMap = const {
  FullScreenRoute.login: '/login',
  FullScreenRoute.signup: '/sign-up',
};
