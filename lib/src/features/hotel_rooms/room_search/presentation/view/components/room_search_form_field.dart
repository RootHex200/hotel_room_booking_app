
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_button_widget.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_text_field.dart';
import 'package:hotel_room_booking/src/core/router/routers.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class RoomSearchFormField extends StatefulWidget {
  const RoomSearchFormField({super.key});

  @override
  State<RoomSearchFormField> createState() => _RoomSearchFormFieldState();
}

class _RoomSearchFormFieldState extends State<RoomSearchFormField> {
  late TextEditingController _checkInController;
  late TextEditingController _checkOutController;

  @override
  void initState() {
    _checkInController=TextEditingController();
    _checkOutController=TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _checkInController.dispose();
    _checkOutController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(AppString.checkIn,style: mediumBoldBlackTextStyle,),   
          const VerticalSpace(height: 10),
          SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: CustomTextField(
            readOnly: true,
            onTap: (){
              print("object");
            },
            hintText: AppString.dateTime, controller: _checkInController, iconPath: "assets/images/date.png"),
          ),
          const VerticalSpace(height: 10),
          const Text(AppString.checkOut,style: mediumBoldBlackTextStyle,),   
          const VerticalSpace(height: 10),
          SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: CustomTextField(
                        readOnly: true,
            onTap: (){
              print("object2");
            },
            hintText: AppString.dateTime, controller: _checkInController, iconPath: "assets/images/date.png"),
          ),
          const VerticalSpace(height: 10),
          const Text(AppString.guest,style: mediumBoldBlackTextStyle,),   
          const VerticalSpace(height: 10),
          Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.textFieldBorderColor,style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.add,size: 32,),
              Text("1",style: mediumBoldBlackTextStyle,),
              Icon(Icons.remove,size: 32,)
            ],
          ),
          ),
          const VerticalSpace(height: 20),
          GestureDetector(
            onTap: (){
              _navigateToRoomsPage(context);
            },
            child: const CustomButtonWidget(
              height: 60,
              buttonText: AppString.find, radius: 10),
          ),
        ],
      ),
    );
  }
}


void _navigateToRoomsPage(BuildContext context){
  context.goNamed(Routes.room.name);
}