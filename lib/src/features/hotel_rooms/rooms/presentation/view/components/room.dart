import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/router/routers.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _navigateToRoomDetails(context);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        decoration: BoxDecoration(
            color: AppColor.whiteBackgroundColor,
            boxShadow: const [
              BoxShadow(
                  color: AppColor.whiteContainerColor,
                  blurRadius: 5,
                  spreadRadius: 1)
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/room.png"))
                ),
              ),
              const VerticalSpace(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        AppString.offer,
                        style: blueSmallColorBoldTextStyle,
                      )),
                    ),
                    const HorizontalSpace(width: 10),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColor.yellowColor,
                          ),
                          HorizontalSpace(width: 7),
                          Text(
                            "4.5",
                            style: blueSmallColorBoldTextStyle,
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.favorite_outline,
                      color: AppColor.primaryColor,
                      size: 28,
                    )
                  ],
                ),
              ),
              const VerticalSpace(height: 8),
              Padding(
                  padding: const EdgeInsets.only(left: 14, right: 10),
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(text: "\$500 USD ", style: priceRichBlueTextStyle),
                    TextSpan(text: "/night", style: priceRichBlackTextStyle),
                  ]))),
              const VerticalSpace(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}



void _navigateToRoomDetails(BuildContext context){
  context.goNamed(Routes.details.name);
}