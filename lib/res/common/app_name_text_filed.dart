import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppNameTextFiled extends StatelessWidget {
  const AppNameTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (!RegExp(r"^[a-z0-9]").hasMatch(value!)) {
          return "Please enter  fullName";
        }
        return null;
      },
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColors.grayColor),
        ),
        hintText: "Name",
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
