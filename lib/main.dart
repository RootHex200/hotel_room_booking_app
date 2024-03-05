import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_room_booking/src/core/router/app_router_config.dart';
import 'package:hotel_room_booking/src/core/values/theme/light_theme.dart';

void main() {
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'HotelBooking',
      theme: lightTheme,
      routerConfig: ref.read(goRouterProvider),
    );
  }
}
