import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_button_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class BookNow extends StatelessWidget {
  const BookNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration:  BoxDecoration(
        color: AppColor.whiteBackgroundColor.withOpacity(0.4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15)
        )
      ),
      padding: const EdgeInsets.only(left: 20,right: 10),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(children: [
          TextSpan(text: "\$500 USD ", style: priceRichBlueTextStyle),
          TextSpan(text: "/night", style: priceRichBlackTextStyle),
        ])),
        const CustomButtonWidget(
          width: 150,
          height: 50,
          buttonText: AppString.bookNow, radius: 12)
        ],
      ),
    );
  }
}
