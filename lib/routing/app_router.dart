import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:app_cinemovida/routing/scaffold_with_bottom_nav_bar.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/cinema/screen/cinema_screen.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/coming-soon/screen/coming-soon_screen.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/display/screen/display_screen.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/events/screen/events_screen.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/tickets/tickets_details/tickets_screen.dart';


enum AppRoute {
  onDisplay,
  comingSoon,
  events,
  tickets,
  cinema,
  setting,
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sheetNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation:'/onDisplay',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
        ShellRoute(
          navigatorKey: _sheetNavigatorKey,
          builder: (context, state, child) {
            return ScaffoldBottomNavBar(child: child);
          },
          routes: [
            GoRoute(
              path: 'onDisplay',
              name: AppRoute.onDisplay.name,
              pageBuilder: (context, state) => const NoTransitionPage(
                  child: OnDisplayScreen(),
              )
            ),
            GoRoute(
                path: 'comingSoon',
                name: AppRoute.comingSoon.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: ComingSoonScreen(),
                )
            ),
            GoRoute(
                path: 'events',
                name: AppRoute.events.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: EventsScreen(),
                )
            ),
            GoRoute(
                path: 'tickets',
                name: AppRoute.tickets.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: TicketsScreen(),
                )
            ),
            GoRoute(
                path: 'cinema',
                name: AppRoute.cinema.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: LocalisationScreen(),
                )
            ),
          ],
        ),
      ],
  );
});