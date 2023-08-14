import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppEmailTextFiled extends StatelessWidget {
  const AppEmailTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
          return "Please enter valid email";
        }
        return null;
      },
      decoration: InputDecoration(
        isDense: true,
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColors.grayColor),
        ),
        hintText: "Email",
        hintStyle: TextStyle(
          color: AppColors.lGrayColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () {},
    );
  }
}
