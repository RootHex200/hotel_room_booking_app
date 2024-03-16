
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_button_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';

class CardInfoField extends StatefulWidget {
  const CardInfoField({super.key});

  @override
  State<CardInfoField> createState() => _CardInfoFieldState();
}

class _CardInfoFieldState extends State<CardInfoField> {
 final controller = CardFormEditController();
   @override
  void initState() {
    controller.addListener(update);
    super.initState();
  }

  void update() => setState(() {});
  @override
  void dispose() {
    controller.removeListener(update);
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          CardFormField(
            style: CardFormStyle(
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderColor: Colors.black,
              cursorColor: Colors.black,
              fontSize: 19,
              placeholderColor: Colors.grey,
            ),
            controller: CardFormEditController(),
          ),
        //  controller.details.complete == true?
        //   GestureDetector(
        //     onTap: () {},
        //     child: const CustomButtonWidget(
        //         height: 50,
                
        //         buttonText: "Payment",
        //         radius: 17),
        //   ):GestureDetector(
        //     onTap: (){
        //       print(controller.details.toString());
        //     },
        //     child: CustomButtonWidget(
        //       height: 50,
        //       buttonText: "Payment", radius: 17,color: AppColor.primaryColor.withOpacity(0.3),),
        //   ),
      GestureDetector(
            onTap: ()async{
            },
            child: CustomButtonWidget(
              height: 50,
              buttonText: "Payment", radius: 17,color: AppColor.primaryColor.withOpacity(0.3),),
          ),
        ],
      ),
    );
  }
}
