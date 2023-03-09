import 'package:app_cinemovida/routing/scaffold_with_bottom_nav_bar.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/cinema/screen/cinema_screen.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/coming-soon/screen/coming-soon_screen.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/display/screen/display_screen.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/events/screen/events_screen.dart';
import 'package:app_cinemovida/src/features/movies/presentation/pages/tickets/tickets_details/tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


enum AppRoute {
  onDisplay,
  comingSoon,
  events,
  tickets,
  cinema,
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/onDisplay',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldBottomNavBar(child: child);
        },
        routes: [
          // A l'affiche
          GoRoute(
            path: '/onDisplay',
            name: AppRoute.onDisplay.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const OnDisplayScreen(),
            ),
          ),
          // A venir
          GoRoute(
            path: '/comingSoon',
            name: AppRoute.comingSoon.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ComingSoonScreen(),
            ),
          ),
          // Evenements
          GoRoute(
            path: '/events',
            name: AppRoute.events.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const EventsScreen(),
            ),
          ),
          // Mes billets
          GoRoute(
              path: '/tickets',
              name: AppRoute.tickets.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const TicketsScreen(),
              ),
          ),
          // Mon cinema
          GoRoute(
              path: '/cinema',
              name: AppRoute.cinema.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const LocalisationScreen(),
              ),
          ),
        ],
      ),
    ],
  );
});
