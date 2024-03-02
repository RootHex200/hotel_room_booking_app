

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_room_booking/src/core/router/routers.dart';


final goRouterProvider = Provider((ref) => _router);

final GoRouter _router=GoRouter(
  routes: [
    GoRoute(
      path: "/",
      routes: [
        GoRoute(
          path: Routes.signIn.name
        ),
        GoRoute(
          path: Routes.signUp.name
        ),
        GoRoute(
          path: Routes.details.name
        ),
      ]
      )
  ]
  );