import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/pages/home_page.dart';
import 'package:todoapp/pages/notes_page.dart';
import 'package:todoapp/pages/todo_page.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: false,
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: 'notes',
        path: '/notes',
        builder: (context, state) => const NotesPage(),
      ),
      GoRoute(
        name: 'todo',
        path: '/todo',
        builder: (context, state) => const TodoPage(),
      ),
    ],
  );
}
