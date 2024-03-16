
import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/features/payments/payment_process/presentation/view/components/card_info_field.dart';
class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppString.payment,style: mediumBoldBlackTextStyle,),
          backgroundColor: AppColor.whiteBackgroundColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              color: AppColor.primaryColor.withOpacity(0.2),
              child: const Column(
                children: [
                  Text(
                    AppString.totalPrice,
                    style: mediumBoldBlackTextStyle,
                  ),
                  VerticalSpace(
                    height: 10,
                  ),
                  Text(
                    "\$750.00",
                    style: blueColorBoldTextStyle,
                  ),
                  VerticalSpace(
                    height: 10,
                  ),
                  Text(
                    AppString.vat,
                    style: grayColorTextStyle,
                  )
                ],
              ),
            ),
            const VerticalSpace(height: 20),
            const CardInfoField(),
            
          ],
        ),
      ),
    );
  }
}