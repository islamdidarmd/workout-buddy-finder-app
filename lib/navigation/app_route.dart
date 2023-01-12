abstract class AppRoute {
  String get route;
}

class TopLevelRoute implements AppRoute {
  final String _route;

  @override
  String get route => _route;

  const TopLevelRoute._({required String route}) : _route = route;

  const TopLevelRoute.signIn() : this._(route: '/sign-in');

  const TopLevelRoute.signUp() : this._(route: '/sign-up');

  const TopLevelRoute.suggestion() : this._(route: '/suggestion');

  const TopLevelRoute.profile() : this._(route: '/profile');

  const TopLevelRoute.messaging() : this._(route: '/messaging');

  const TopLevelRoute.settings() : this._(route: '/settings');
}

class ChildRoute implements AppRoute {
  final String _route;

  @override
  String get route => _route;

  const ChildRoute({required String route}) : _route = route;
}
