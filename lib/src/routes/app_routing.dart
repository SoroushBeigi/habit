
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit/src/features/home/presentation/home_screen.dart';
import 'package:habit/src/routes/animated_page_transitions.dart';

class Routes {
  static final parentNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter routes({String? initialLocation})=> GoRouter(
    navigatorKey: parentNavigatorKey,
    initialLocation: initialLocation ?? HomeScreen.homeScreenPath,
    routes: [
      GoRoute(
          path: HomeScreen.homeScreenPath,
          name: HomeScreen.homeScreenName,
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