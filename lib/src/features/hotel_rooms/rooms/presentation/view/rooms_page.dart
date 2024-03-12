
import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/rooms/presentation/view/components/room.dart';

class RoomsPage extends StatelessWidget {
  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColor.whiteBackgroundColor),
        title: const Text(AppString.tmp,style: whiteColorTextStyle,),
      ),
      body: Column(
        children: [
         //header
         const VerticalSpace(height: 8),
         Container(
          color: AppColor.whiteBackgroundColor.withOpacity(0.3),
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppString.availableRoom,style: mediumBoldBlackTextStyle,),
                  VerticalSpace(height: 5),
                  Text(AppString.vatTax,style: grayColorTextStyle,)
                ],
              ),
              Row(
                children: [
                  Text(AppString.filter,style: blueColorBoldTextStyle,),
                  HorizontalSpace(width: 8),
                  Image(
                    color: AppColor.primaryColor,
                    image: AssetImage("assets/images/filter.png"))
                ],
              )
            ],
          ),
         ),
        const VerticalSpace(height: 10),
         Expanded(
           child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 3,
            shrinkWrap: true,
            primary: false,
            itemBuilder:(context, index) {
              return const Room();
            }
            ),
         )

        ],
      ),
    );
  }
}