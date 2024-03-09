
import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.keyboardType,
    required this.controller,
    this.obscureText = false,
    required this.iconPath,
    this.initialValue
  });

  final String hintText;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final bool obscureText;
  final String iconPath;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: AppColor.primaryColor,
      style: textFiledTextStyle,
      decoration: InputDecoration(
        prefixIcon: Image(
          image: AssetImage(iconPath)),
        contentPadding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 10),
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.textFieldBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.textFieldBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}