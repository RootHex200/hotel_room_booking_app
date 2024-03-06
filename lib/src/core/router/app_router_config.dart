

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_room_booking/src/core/router/routers.dart';
import 'package:hotel_room_booking/src/features/splash/presentation/view/get_start_screen.dart';
import 'package:hotel_room_booking/src/features/splash/presentation/view/splash_screen.dart';


final goRouterProvider = Provider((ref) => _router);

final GoRouter _router=GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: Routes.splashScreen.name,
      builder: (context, state) {
        return const SplashScreen();
      },
      routes: [
        GoRoute(
          path: Routes.getStart.name,
          name: Routes.getStart.name,
          pageBuilder: (context, state) {
            return  MaterialPage(
              key: state.pageKey,
              child: const GetStartScreen()
            );
          },
        )
      ]
    )
  ]
);