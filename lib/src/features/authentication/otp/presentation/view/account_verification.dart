import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/features/authentication/otp/presentation/view/components/pin_form_field.dart';

class AccountVerification extends StatelessWidget {
  const AccountVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const VerticalSpace(
            height: 40,
          ),
          Center(
            child: RichText(
                text: const TextSpan(style: TextStyle(fontSize: 40), children: [
              TextSpan(
                  text: AppString.verify,
                  style: headLineRichTextBlackColorBoldTextStyle),
              TextSpan(
                  text: AppString.account,
                  style: headLineRichTextBlueColorBoldTextStyle)
            ])),
          ),
          const VerticalSpace(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 40, left: 40),
            child: Text(
              AppString.verificationText,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: longTextStyle,
            ),
          ),
          const VerticalSpace(
            height: 20,
          ),
          const PinFormField(),
          const VerticalSpace(
            height: 20,
          ),
          const VerticalSpace(height: 20),
                         Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(AppString.receiveCode,style: grayColorTextStyle,),
                  GestureDetector(
                    onTap: (){
                    },
                    child: const Text(AppString.resendAgain,style: linkTextStyle,))
                ],
              )
        ],
      )),
    );
  }
}
