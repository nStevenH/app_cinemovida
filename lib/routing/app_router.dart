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
final _sheetNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(routes: []);
});