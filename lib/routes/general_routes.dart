import 'package:change_collect_web/privacy.dart';
import 'package:change_collect_web/responsive_layouts/responsive_main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../alm_kyc.dart';
import '../logs/onboarding_screen.dart';
import '../term_use.dart';

final GoRouter basicRoutes = GoRouter(
  debugLogDiagnostics: true,
  routes: <GoRoute>[
    // GoRoute(path: '/',
    // // name: "Onboarding_Screen",
    // builder: (BuildContext context, GoRouterState state) =>  const OnboardScreen(),
    // ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const ResponsiveMain(),
    ),
    GoRoute(
      path: '/privacy',
      name: 'privacy',
      builder: (BuildContext context, GoRouterState state) => const Privacy(),
    ),
    GoRoute(
      path: '/TermOfUse',
      name: 'TermOfUse',
      builder: (BuildContext context, GoRouterState state) => const TermOfUse(),
    ),
    GoRoute(
      path: '/AlmView',
      name: 'AlmView',
      builder: (BuildContext context, GoRouterState state) => const AlmView(),
    ),
    GoRoute(path: '/OnboardScreen',
     name: "OnboardScreen",
    builder: (BuildContext context, GoRouterState state) =>  const OnboardScreen(),
    ),

  ],
);