import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../feature_messaging/ui/chat_room/chat_room_page.dart';
import '../feature_visit_user/ui/visit_user_page.dart';
import 'navigation.dart';
import '../feature_messaging/feature_messaging.dart';
import '../feature_suggestion/suggestion.dart';
import '../feature_profile/profile.dart';
import '../feature_settings/settings.dart';
import '../core/core.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: TopLevelRoute.suggestion().route,
  errorBuilder: (_, state) => ErrorIndicator(error: state.error?.toString()),
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => ScaffoldWithBottomNav(
        child: child,
        currentRoute: state.location,
        onOpenSuggestion: () => context.go(TopLevelRoute.suggestion().route),
        onOpenMessaging: () => context.go(TopLevelRoute.messaging().route),
        onOpenProfile: () => context.go(TopLevelRoute.profile().route),
        onOpenSettings: () => context.go(TopLevelRoute.settings().route),
      ),
      routes: _appRoutes,
    ),
  ],
);

List<GoRoute> get _appRoutes => [
      GoRoute(
        path: TopLevelRoute.suggestion().route,
        pageBuilder: (context, _) {
          return NoTransitionPage(
            child: SuggestionsPage(
              onShowProfile: () => context.go(TopLevelRoute.profile().route),
              onOpenMessaging: () =>
                  context.go(TopLevelRoute.messaging().route),
              onOpenProfile: (userId) => context.go(
                '${VisitUserRoute().generateNavRoute(
                  root: TopLevelRoute.suggestion().route,
                  userId: userId,
                )}',
              ),
            ),
          );
        },
        routes: [
          GoRoute(
            path: VisitUserRoute().route,
            builder: (context, state) =>
                VisitUserPage(userId: state.params['userId']!),
          ),
        ],
      ),
      GoRoute(
        path: TopLevelRoute.profile().route,
        pageBuilder: (context, _) {
          return NoTransitionPage(
            child: ProfilePage(
              onEditProfile: () => context.go(
                EditProfileRoute()
                    .generateNavRoute(root: TopLevelRoute.profile().route),
              ),
            ),
          );
        },
        routes: [
          GoRoute(
            path: EditProfileRoute().route,
            builder: (context, _) => ProfileEditPage(),
          ),
        ],
      ),
      GoRoute(
        path: TopLevelRoute.messaging().route,
        pageBuilder: (context, _) => NoTransitionPage(
          child: MessagingPage(
            onOpenChatRoom: (chatRoomId) => context.go(
              ChatRoomRoute().generateNavRoute(
                root: TopLevelRoute.messaging().route,
                chatRoomId: chatRoomId,
              ),
            ),
          ),
        ),
        routes: [
          GoRoute(
            path: ChatRoomRoute().route,
            builder: (context, state) => ChatRoomPage(
              chatRoomId: state.params['chatRoomId']!,
              onVisitProfile: (userId) => context.go(
                VisitUserRoute().generateNavRoute(
                  root: '${ChatRoomRoute().generateNavRoute(
                    root: TopLevelRoute.messaging().route,
                    chatRoomId: state.params['chatRoomId']!,
                  )}',
                  userId: userId,
                ),
              ),
            ),
            routes: [
              GoRoute(
                path: VisitUserRoute().route,
                builder: (_, state) =>
                    VisitUserPage(userId: state.params['userId']!),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: TopLevelRoute.settings().route,
        pageBuilder: (context, _) => NoTransitionPage(child: SettingsPage()),
      ),
    ];
