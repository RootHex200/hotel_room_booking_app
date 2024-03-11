

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_room_booking/src/features/favorite/presentation/view/favorite_page.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/room_search/presentation/view/room_search_page.dart';
import 'package:hotel_room_booking/src/features/my-booking/presentation/view/my_booking_page.dart';
import 'package:hotel_room_booking/src/features/user_profile/presentation/view/user_profile_page.dart';

final navPageProvider = Provider((ref) {
  return [
    const RoomSearchPage(),
    const FavoritePage(),
    const MyBookingPage(),
    const UserProfilePage()
  ];
});