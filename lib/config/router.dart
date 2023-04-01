import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:xiao_tally/pages/add/add.dart';
import 'package:xiao_tally/pages/app.dart';
import 'package:xiao_tally/pages/login/login.dart';
import 'package:xiao_tally/pages/register/register.dart';
import 'package:xiao_tally/pages/welcome/welcome.dart';

/// The route configuration.
final GoRouter myRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const AppPage(
          title: '主页',
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'welcome',
          builder: (BuildContext context, GoRouterState state) {
            return const WelcomePage();
          },
        ),
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: 'register',
          builder: (BuildContext context, GoRouterState state) {
            return const RegisterPage();
          },
        ),
        GoRoute(
            path: 'add',
            builder: (BuildContext context, GoRouterState state) {
              return const AddPage(
                title: '添加',
              );
            }),
      ],
    ),
  ],
);
