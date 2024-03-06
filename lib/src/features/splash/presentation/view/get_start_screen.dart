
import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //hotel image
            Image(image: AssetImage("assets/images/hotel_image.png")),
            SizedBox(height: 50,),
        
            //title
            Text(AppString.unleashYourInnerTraveller,style: getStartScreenHeadLineTextStyle,),
            Text(AppString.unleashYourInnerTravellerSubLine,maxLines: 4,textAlign: TextAlign.center,style: getStartScreenHSubLineTextStyle,)
        
          ],
        ),
      ),
    );
  }
}