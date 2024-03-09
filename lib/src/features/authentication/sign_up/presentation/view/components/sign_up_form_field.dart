

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_button_widget.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_text_field.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';

class SignUpFormField extends StatefulWidget {
  const SignUpFormField({super.key});

  @override
  State<SignUpFormField> createState() => _SignUpFormFieldState();
}

class _SignUpFormFieldState extends State<SignUpFormField> {
  late TextEditingController _userNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _userNameController=TextEditingController();
    _emailController=TextEditingController();
    _passwordController=TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
    log("dispose",error: "here is all dispose");
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
              width: MediaQuery.of(context).size.width,
              margin:const EdgeInsets.only(left: 20,right: 20),
              child: CustomTextField(
                iconPath: "assets/images/person.png",
                hintText: AppString.username, controller: _userNameController
                ),
            ),
            const VerticalSpace(height: 20),
                  Container(
              width: MediaQuery.of(context).size.width,
              margin:const EdgeInsets.only(left: 20,right: 20),
              child: CustomTextField(
                iconPath: "assets/images/email.png",
                hintText: AppString.email, controller: _emailController
                ),
            ),
                        const VerticalSpace(height: 20),
                  Container(
              width: MediaQuery.of(context).size.width,
              margin:const EdgeInsets.only(left: 20,right: 20),
              child: CustomTextField(
                iconPath: "assets/images/password.png",
                hintText: AppString.password, controller: _passwordController
                ),
            ),
        const VerticalSpace(height: 50),

        CustomButtonWidget(
          height: 50,
          margin: const EdgeInsets.only(left: 20,right: 20),
          width: MediaQuery.of(context).size.width,
          buttonText: AppString.signup, radius: 16)
      ],
    );
  }
}