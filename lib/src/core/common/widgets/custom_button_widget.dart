

import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key,this.height,this.width,required this.buttonText,this.margin,required this.radius});
  final double? height;
  final double? width;
  final String buttonText;
  final EdgeInsetsGeometry? margin;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(radius)
      ),
      child: Center(child: Text(buttonText,style:whiteColorTextStyle,)),
    );
  }
}