import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class RatingOffer extends StatelessWidget {
  const RatingOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 40,
          decoration: BoxDecoration(
              color: AppColor.primaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12)),
          child: const Center(
              child: Text(
            AppString.offer,
            style: blueSmallColorBoldTextStyle,
          )),
        ),
        const HorizontalSpace(width: 20),
        Container(
          width: 80,
          height: 40,
          decoration: BoxDecoration(
              color: AppColor.primaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: AppColor.yellowColor,
              ),
              HorizontalSpace(width: 7),
              Text(
                "4.5",
                style: blueSmallColorBoldTextStyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}
