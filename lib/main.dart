import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_room_booking/src/core/router/app_router_config.dart';

void main() {
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp.router(
      title: 'HotelBooking',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: ref.read(goRouterProvider),
    );
  }
}
