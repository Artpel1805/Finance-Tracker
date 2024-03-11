import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:saving_goal/app/bloc/user/user_bloc.dart';
import 'package:saving_goal/app/screens/create/create_screen.dart';
import 'package:saving_goal/app/screens/home_page.dart';
import 'package:saving_goal/component/colors.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: FGTColors.black,
              body: MultiBlocProvider(
                providers: [BlocProvider(create: (_) => UserBloc())],
                child: child,
              ),
            ),
        routes: [
          GoRoute(
              path: '/home',
              builder: (context, state) => const HomePage(),
              routes: <RouteBase>[
                GoRoute(
                  path: 'create',
                  builder: (context, state) => const CreateScreen(),
                )
              ]),
        ])
  
  ],
);
