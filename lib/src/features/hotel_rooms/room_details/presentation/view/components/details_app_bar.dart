import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10,right: 10),
      height: 60,
      
      color: AppColor.whiteBackgroundColor,
      child: Row(
        children: [
          const Icon(Icons.arrow_back,color: AppColor.primaryColor,size: 30,),
          Expanded(child: Container()),
          const Text(AppString.roomDetails,style: mediumBoldBlackTextStyle,),
          Expanded(child: Container()),
          const Icon(Icons.share,color:AppColor.primaryColor,size: 30,),
          const HorizontalSpace(width: 10),
          const Icon(Icons.favorite_outline,color:AppColor.primaryColor,size: 30,)
        ],
      ),
    );
  }
}