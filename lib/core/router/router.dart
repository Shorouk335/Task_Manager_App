import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_app/modules/auth/presentation/auth.dart';
import 'package:task_manager_app/modules/splach/presentation/splach.dart';

class AppRouter {
  static const String splachRoute = "/";
  static const String loginRoute = "/login";
  static const String onboarding1Route = "/onboarding1";
  static const String onboarding2Route = "/onboarding2";
  static const String onboarding3Route = "/onboarding3";
  static const String layoutRoute = "/layout";
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
      builder: (context, state) => LoginScreen(),
    )
  ]);
}
