import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key,required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: const Divider(
        thickness: 2,
        height: 1,
        color: AppColor.dividerColor,
      ),
    );
  }
}
