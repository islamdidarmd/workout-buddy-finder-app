final initialRoute = appRoutesMap[AppRoute.home];

enum AppRoute {
  home,
  profile,
  chat,
  settings,
}

const Map<AppRoute, String> appRoutesMap = const {
  AppRoute.home: "/home",
  AppRoute.profile: "/profile",
  AppRoute.chat: "/chat",
  AppRoute.settings: "/settings",
};
