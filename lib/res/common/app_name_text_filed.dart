import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppNameTextFiled extends StatelessWidget {
  const AppNameTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: TextFormField(
        validator: (value) {
          if (!RegExp(r"^[a-z0-9]").hasMatch(value!)) {
            return "Please enter  fullName";
          }
          return null;
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(20),
          isDense: false,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grayColor, width: 1),
          ),
          hintText: "Name",
          hintStyle: TextStyle(
            color: AppColors.lGrayColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
