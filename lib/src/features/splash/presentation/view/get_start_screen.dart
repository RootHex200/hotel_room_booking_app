
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_button_widget.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/router/routers.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //hotel image
            const Image(image: AssetImage("assets/images/hotel_image.png")),
            const VerticalSpace(height: 20),

            //title
            const Text(AppString.unleashYourInnerTraveller,style: getStartScreenHeadLineTextStyle,),
            const Text(AppString.unleashYourInnerTravellerSubLine,maxLines: 4,textAlign: TextAlign.center,style: longTextStyle,),

            const VerticalSpace(height: 30),

            GestureDetector(
              onTap: (){
                _navigateToSignUpScreen(context);
              },
              child: CustomButtonWidget(
                radius: 17,
                margin: const EdgeInsets.only(left: 20,right: 20),
                buttonText: AppString.startExploring,height: 50,width: MediaQuery.of(context).size.width,),
            ),
        
          ],
        ),
      ),
    );
  }
}

void _navigateToSignUpScreen(BuildContext context){
  context.goNamed(Routes.signUp.name);
}