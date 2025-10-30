import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/dashboard/dashboard_page.dart';
import '../../features/goal/goal_page.dart';
import '../../features/quest/quest_page.dart';
import '../../features/journal/journal_page.dart';
import '../../features/dream/dream_page.dart';
import 'app_shell.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      ShellRoute(
        builder: (context, state, child) => AppShell(child: child),
        routes: [
          GoRoute(
            path: '/',
            name: 'dashboard',
            builder: (BuildContext context, GoRouterState state) => const DashboardPage(),
          ),
          GoRoute(
            path: '/goal/:id',
            name: 'goal',
            builder: (BuildContext context, GoRouterState state) {
              final id = state.pathParameters['id'] ?? '';
              return GoalPage(goalId: id);
            },
          ),
          GoRoute(
            path: '/quest/:id',
            name: 'quest',
            builder: (BuildContext context, GoRouterState state) {
              final id = state.pathParameters['id'] ?? '';
              return QuestPage(questId: id);
            },
          ),
          GoRoute(
            path: '/journal',
            name: 'journal',
            builder: (BuildContext context, GoRouterState state) => const JournalPage(),
          ),
          GoRoute(
            path: '/dream/:id',
            name: 'dream',
            builder: (BuildContext context, GoRouterState state) {
              final id = state.pathParameters['id'] ?? '';
              return DreamPage(dreamId: id);
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Not found')),
      body: Center(child: Text('Route not found: ${state.uri}')),
    ),
    debugLogDiagnostics: false,
  );
}
