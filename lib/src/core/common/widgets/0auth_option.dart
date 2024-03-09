// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';

class OAuthOption extends StatelessWidget {
  const OAuthOption({super.key,required this.facebookAuth,required this.googleAuth});

  final void Function()? googleAuth;
  final void Function()? facebookAuth;
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: googleAuth,
          child: const OauthItem(imagePath: "assets/images/google.png")),
        const HorizontalSpace(width: 20,),
        GestureDetector(
          onTap: facebookAuth,
          child: const OauthItem(imagePath: "assets/images/facebook.png"))
      ],
    );
  }
}

class OauthItem extends StatelessWidget {
  const OauthItem({super.key,required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color:AppColor.whiteBackgroundColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 1,
                color: AppColor.whiteContainerColor
              )
            ]
          ),
          child:  Center(
            child: Image(image: AssetImage(imagePath)),
          ),
      );
  }
}