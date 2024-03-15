import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       const CircleAvatar(
         radius: 30,
         backgroundImage: NetworkImage("https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?size=626&ext=jpg&ga=GA1.1.735520172.1710460800&semt=sph"),
       ),
       const HorizontalSpace(width: 10),
       const Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Sabitur Rahman",style: smallBoldBlackTextStyle,),
           Text("Receptionist",style: grayColorTextStyle,)
         ],
       ),
       Expanded(child: Container()),
       const CircleAvatar(
         radius: 20,
         backgroundColor: AppColor.primaryColor,
         child: Icon(Icons.phone_rounded,size: 30,color: AppColor.whiteBackgroundColor,)),
       const HorizontalSpace(width: 10),
                       const CircleAvatar(
         radius: 20,
         backgroundColor: AppColor.primaryColor,
         child: Icon(Icons.email,size: 30,color: AppColor.whiteBackgroundColor,)),
     ],
                );
  }
}
