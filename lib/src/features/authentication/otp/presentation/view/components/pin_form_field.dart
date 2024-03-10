
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_button_widget.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class PinFormField extends StatelessWidget {
  const PinFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         OtpTextField(
          fieldWidth: 60,
        numberOfFields: 4,
        textStyle: textFiledTextStyle,
        borderColor: AppColor.black,
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
    ),
    const VerticalSpace(height: 20),
      CustomButtonWidget(
            width: MediaQuery.of(context).size.width,
            height: 50,
            margin: const EdgeInsets.only(left: 20,right: 20),
            buttonText: AppString.verify, radius: 17),

      ],
    );
  }
}