
import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/room_search/presentation/view/components/room_search_form_field.dart';

class RoomSearchPage extends StatelessWidget {
  const RoomSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  child: Image(
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    image: const AssetImage("assets/images/bg_image.png")
                  ),
                ),
                Positioned(
                  top: 200,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    decoration: const BoxDecoration(
                      color: AppColor.whiteBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)
                        )
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalSpace(height: 30),
                        Text(AppString.welcomeLongText,maxLines: 2,style: headLineRichTextBlueColorBoldTextStyle,),
                        VerticalSpace(height: 10),
                        Text(AppString.welcomeSubLongText,maxLines: 2,style:yellowTextStyle,),
                        VerticalSpace(height: 20),
                        RoomSearchFormField()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}