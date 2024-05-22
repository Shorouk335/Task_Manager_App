import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_app/modules/auth/presentation/auth.dart';
import 'package:task_manager_app/modules/home/presentation/home.dart';
import 'package:task_manager_app/modules/splach/presentation/splach.dart';

class AppRouter {
  static const String splachRoute = "/";
  static const String loginRoute = "/login";
  static const String homeRoute = "/home";

  GoRouter goRoute = GoRouter(initialLocation: AppRouter.splachRoute, routes: [
    GoRoute(
      path: "/",
      name: AppRouter.splachRoute,
      builder: (context, state) => SplachScreen(),
    ),
    GoRoute(
      path: "/login",
      name: AppRouter.loginRoute,
      builder: (context, state) => AuthScreen(),
    ),
    GoRoute(
      path: "/home",
      name: AppRouter.homeRoute,
      builder: (context, state) => HomeScreen(),
    )
  ]);
}
