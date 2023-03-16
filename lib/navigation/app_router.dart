import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../feature_messaging/ui/chat_room/chat_room_page.dart';
import '../feature_suggestion/ui/suggestions_page.dart';
import '../feature_visit_user/ui/visit_user_page.dart';
import 'navigation.dart';
import '../feature_messaging/feature_messaging.dart';
import '../feature_profile/feature_profile.dart';
import '../feature_settings/settings.dart';
import '../core/core.dart';

/// ignore_for_file: prefer-match-file-name
/// ignore_for_file: prefer-static-class

class RouteNavigatorKey {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static final shellNavigatorKey = GlobalKey<NavigatorState>();
}

final router = GoRouter(
    routes: [
      ShellRoute(
          builder: (context, state, child) => ScaffoldWithBottomNav(
                currentRoute: state.location,
                onOpenSuggestion: () =>
                    context.go(const TopLevelRoute.suggestion().route),
                onOpenMessaging: () =>
                    context.go(const TopLevelRoute.messaging().route),
                onOpenProfile: () =>
                    context.go(const TopLevelRoute.profile().route),
                onOpenSettings: () =>
                    context.go(const TopLevelRoute.settings().route),
                child: child,
              ),
          routes: _appRoutes,
          navigatorKey: RouteNavigatorKey.shellNavigatorKey),
    ],
    errorBuilder: (_, state) => ErrorIndicator(error: state.error?.toString()),
    initialLocation: const TopLevelRoute.suggestion().route,
    navigatorKey: RouteNavigatorKey.rootNavigatorKey);

List<GoRoute> get _appRoutes => [
      GoRoute(
        path: const TopLevelRoute.suggestion().route,
        pageBuilder: (context, _) {
          return NoTransitionPage(
            child: SuggestionsPage(
              onShowProfile: () =>
                  context.go(const TopLevelRoute.profile().route),
              onOpenMessaging: () =>
                  context.go(const TopLevelRoute.messaging().route),
              onOpenProfile: (userId) => context.go(
                const VisitUserRoute().generateNavRoute(
                  root: const TopLevelRoute.suggestion().route,
                  userId: userId,
                ),
              ),
            ),
          );
        },
        routes: [
          GoRoute(
            path: const VisitUserRoute().route,
            builder: (context, state) =>
                VisitUserPage(userId: state.params['userId']!),
          ),
        ],
      ),
      GoRoute(
        path: const TopLevelRoute.profile().route,
        pageBuilder: (context, _) {
          return NoTransitionPage(
            child: ProfilePage(
              onEditProfile: () => context.go(
                const EditProfileRoute().generateNavRoute(
                    root: const TopLevelRoute.profile().route),
              ),
            ),
          );
        },
        routes: [
          GoRoute(
            path: const EditProfileRoute().route,
            builder: (context, _) => const ProfileEditPage(),
          ),
        ],
      ),
      GoRoute(
        path: const TopLevelRoute.messaging().route,
        pageBuilder: (context, _) => NoTransitionPage(
          child: MessagingPage(
            onOpenChatRoom: (chatRoomId) => context.go(
              const ChatRoomRoute().generateNavRoute(
                root: const TopLevelRoute.messaging().route,
                chatRoomId: chatRoomId,
              ),
            ),
          ),
        ),
        routes: [
          GoRoute(
            path: const ChatRoomRoute().route,
            builder: (context, state) => ChatRoomPage(
              chatRoomId: state.params['chatRoomId']!,
              onVisitProfile: (userId) => context.go(
                const VisitUserRoute().generateNavRoute(
                  root: const ChatRoomRoute().generateNavRoute(
                    root: const TopLevelRoute.messaging().route,
                    chatRoomId: state.params['chatRoomId']!,
                  ),
                  userId: userId,
                ),
              ),
            ),
            routes: [
              GoRoute(
                path: const VisitUserRoute().route,
                builder: (_, state) =>
                    VisitUserPage(userId: state.params['userId']!),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: const TopLevelRoute.settings().route,
        pageBuilder: (context, _) =>
            const NoTransitionPage(child: SettingsPage()),
      ),
    ];
