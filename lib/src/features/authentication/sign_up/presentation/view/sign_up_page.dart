import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/0auth_option.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/core/common/widgets/or_option.dart';
import 'package:hotel_room_booking/src/features/authentication/sign_up/presentation/view/components/sign_up_form_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const VerticalSpace(height: 40,),
              Center(
                child:RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 40),
                children: [
                  TextSpan(text: AppString.create,style: headLineRichTextBlackColorBoldTextStyle),
                  TextSpan(text: AppString.account,style: headLineRichTextBlueColorBoldTextStyle)
                ]
              )
              ),
              ),
              const VerticalSpace(height: 20,),
              const Padding(
                padding: EdgeInsets.only(right: 40,left: 40),
                 child: Text(AppString.signUpLongText,textAlign: TextAlign.center,maxLines: 2,style: longTextStyle,),
              ),
              const VerticalSpace(height: 20,),
              const SignUpFormField(),
              const VerticalSpace(height: 40,),                
              const OrOption(text: AppString.orSignUpWith),
              const VerticalSpace(height: 25,), 
              OAuthOption(
                googleAuth: (){
                },
                facebookAuth: (){
                },
              ),
              const VerticalSpace(height: 20,), 
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(AppString.alreadyhaveanaccount,style: grayColorTextStyle,),
                  GestureDetector(
                    onTap: (){},
                    child: const Text(AppString.login,style: linkTextStyle,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}