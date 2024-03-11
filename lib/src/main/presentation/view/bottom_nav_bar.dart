

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/main/presentation/provider/nav_page_controller_provider.dart';
import 'package:hotel_room_booking/src/main/presentation/provider/nav_page_provider.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: ref.watch(navPageProvider)[ref.watch(navPageControllerProvider)],
      
      bottomNavigationBar:BottomNavigationBar(
        onTap: (value) {
          ref.read(navPageControllerProvider.notifier).state=value;
        },
        currentIndex: ref.watch(navPageControllerProvider),
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.black,
        selectedIconTheme:const IconThemeData(color: AppColor.primaryColor),
        unselectedIconTheme: const IconThemeData(color: AppColor.black),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favorite"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_outlined),
            label: "My bookings"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
      ]),
    );
  }
}