

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_room_booking/src/core/router/routers.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //after some delay move to get_start screen page
    _navigateToGetStartPage(context);

    return const Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: AssetImage('assets/images/logo.png'))),
          Center(child: Text(AppString.splashPageHeadLine,style: splashScreenHeadLineTextStyle,)),
          Center(child: Text(AppString.splashPageSubLine,style: splashScreenSubLineTextStyle,)),
        ],
      ),
    );
  }
}

void _navigateToGetStartPage(BuildContext context){
  Future.delayed(const Duration(seconds: 1),(){
    context.goNamed(Routes.getStart.name);
  });
}
