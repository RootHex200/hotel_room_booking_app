import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_divider.dart';

class OrOption extends StatelessWidget {
  const OrOption({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomDivider(width: MediaQuery.of(context).size.width * 0.20,),
        const HorizontalSpace(width: 20),
        Text(
          text,
          style: grayColorTextStyle,
        ),
        const HorizontalSpace(width: 20),
        CustomDivider(width: MediaQuery.of(context).size.width * 0.20,),
      ],
    );
  }
}
