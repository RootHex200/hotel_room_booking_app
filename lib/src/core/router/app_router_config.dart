
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_room_booking/src/core/router/routers.dart';
import 'package:hotel_room_booking/src/features/authentication/otp/presentation/view/account_verification.dart';
import 'package:hotel_room_booking/src/features/authentication/sign_in/presentation/view/sign_in_page.dart';
import 'package:hotel_room_booking/src/features/authentication/sign_up/presentation/view/sign_up_page.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/room_details/presentation/view/room_details_page.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/rooms/presentation/view/rooms_page.dart';
import 'package:hotel_room_booking/src/features/payments/payment_process/presentation/view/payment_process.dart';
import 'package:hotel_room_booking/src/features/splash/presentation/view/get_start_screen.dart';
import 'package:hotel_room_booking/src/features/splash/presentation/view/splash_screen.dart';
import 'package:hotel_room_booking/src/main/presentation/view/bottom_nav_bar.dart';


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
        ),
        GoRoute(
          path: Routes.signUp.name,
          name: Routes.signUp.name,
          pageBuilder: (context, state) {
            return  MaterialPage(
              key: state.pageKey,
              child: const SignUp()
            );
          },
        ),
        GoRoute(
          path: Routes.signIn.name,
          name: Routes.signIn.name,
          pageBuilder: (context, state) {
            return  MaterialPage(
              key: state.pageKey,
              child: const SignIn()
            );
          },
        ),
        GoRoute(
          path: Routes.accountVerification.name,
          name: Routes.accountVerification.name,
          pageBuilder: (context, state) {
            return  MaterialPage(
              key: state.pageKey,
              child: const AccountVerification()
            );
          },
        ),
        GoRoute(
          path: Routes.app.name,
          name: Routes.app.name,
          pageBuilder: (context, state) {
            return  MaterialPage(
              key: state.pageKey,
              child: const BottomNavBar()
            );
          },
        ),
        GoRoute(
          path: Routes.room.name,
          name: Routes.room.name,
          pageBuilder: (context, state) {
            return  MaterialPage(
              key: state.pageKey,
              child: const RoomsPage()
            );
          },
        ),
       GoRoute(
          path: Routes.details.name,
          name: Routes.details.name,
          pageBuilder: (context, state) {
            return  MaterialPage(
              key: state.pageKey,
              child:  const RoomDetailsPage()
            );
          },
        ),
      GoRoute(
          path: Routes.payment.name,
          name: Routes.payment.name,
          pageBuilder: (context, state) {
            return  MaterialPage(
              key: state.pageKey,
              child:  const Payment()
            );
          },
        ),
      ]
    )
  ]
);