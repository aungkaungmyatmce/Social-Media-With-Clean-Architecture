import 'dart:async';

import 'package:flutter_social_media_with_clean_architecture/main.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter();

  late final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: 'feed',
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen();
        },
      ),
      GoRoute(
          name: 'discover',
          path: '/discover',
          builder: (BuildContext context, GoRouterState state) {
            return Container();
          },
          routes: [
            GoRoute(
              name: 'user',
              path: 'userId',
              builder: (BuildContext context, GoRouterState state) {
                return Container();
              },
            )
          ]),
      GoRoute(
          name: 'login',
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return Container();
          },
          routes: [
            GoRoute(
              name: 'signup',
              path: 'signup',
              builder: (BuildContext context, GoRouterState state) {
                return Container();
              },
            )
          ]),
    ],
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  /// Creates a [GoRouterRefreshStream].
  ///
  /// Every time the [stream] receives an event the [GoRouter] will refresh its
  /// current route.
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
