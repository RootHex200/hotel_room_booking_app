import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/0auth_option.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/core/common/widgets/or_option.dart';
import 'package:hotel_room_booking/src/features/authentication/sign_in/presentation/view/components/sign_in_form_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(height: 40,),
              Center(
                child:RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 40),
                children: [
                  TextSpan(text: AppString.welcome,style: headLineRichTextBlackColorBoldTextStyle),
                  TextSpan(text: AppString.back,style: headLineRichTextBlueColorBoldTextStyle)
                ]
              )
              ),
              ),
              const VerticalSpace(height: 20,),
              const Padding(
                padding: EdgeInsets.only(right: 40,left: 40),
                 child: Text(AppString.signInLongText,textAlign: TextAlign.center,maxLines: 2,style: longTextStyle,),
              ),
              const VerticalSpace(height: 20,),
              const SignInFormField(),
              const VerticalSpace(height: 20),
              GestureDetector(
                onTap: (){

                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(AppString.forgotPassword,style: linkTextStyle,),),
              ),
              const VerticalSpace(height: 40,),                
              const OrOption(text: AppString.orContinueWith),
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
                  const Text(AppString.notAccount,style: grayColorTextStyle,),
                  GestureDetector(
                    onTap: (){},
                    child: const Text(AppString.signup,style: linkTextStyle,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}