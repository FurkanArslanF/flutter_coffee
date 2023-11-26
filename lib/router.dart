import 'package:coffee_app/view/error.dart';
import 'package:coffee_app/view/home/view/home.dart';
import 'package:coffee_app/view/login/view/sign_in_view.dart';
import 'package:coffee_app/view/splash/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterManager {
  RouterManager._();
  static const root = '/';
  static const home = '/home';
  static const signIn = '/signIn';

  static Widget _splashRoute(BuildContext context, GoRouterState state) => const SplashView();
  static Widget _homeRoute(BuildContext context, GoRouterState state) => const HomeScreen();
  static Widget _signInRoute(BuildContext context, GoRouterState state) => const SignInView();

  static Widget _errorRoute(BuildContext context, GoRouterState state) => const ErrorScreen();

  final GoRouter _router = GoRouter(
    errorBuilder: _errorRoute,
    routes: <RouteBase>[
      GoRoute(path: root, builder: _splashRoute),
      GoRoute(path: home, builder: _homeRoute),
      GoRoute(path: signIn, builder: _signInRoute),
    ],
  );
  static final RouterManager _instance = RouterManager._();
  static RouterManager get instance => _instance;
  GoRouter get router => _router;
}
