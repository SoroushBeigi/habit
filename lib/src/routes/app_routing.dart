
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit/src/features/home/presentation/home_screen.dart';
import 'package:habit/src/features/onboarding/presentation/onboarding_page.dart';
import 'package:habit/src/routes/animated_page_transitions.dart';

class Routes {
  static final parentNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter routes({String? initialLocation})=> GoRouter(
    navigatorKey: parentNavigatorKey,
    initialLocation:'/onboarding',
    // initialLocation ?? HomeScreen.path,
    routes: [
      GoRoute(
          path: OnboardingPage.path,
          name: OnboardingPage.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return AnimatedPageTransitions.getPage(
              state: state,
              transitionType: PageTransitionType.slideFromRight,
              child: const OnboardingPage(),
            );
          }),
      GoRoute(
          path: HomeScreen.path,
          name: HomeScreen.name,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return AnimatedPageTransitions.getPage(
              state: state,
              transitionType: PageTransitionType.slideFromRight,
              child: const HomeScreen(),
            );
          }),
    ],
  );
}