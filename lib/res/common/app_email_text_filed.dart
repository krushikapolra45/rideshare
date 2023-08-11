import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppEmailTextFiled extends StatelessWidget {
  const AppEmailTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: TextFormField(
        validator: (value) {
          if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
            return "Please enter valid email";
          }
          return null;
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(20),
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grayColor, width: 1),
          ),
          hintText: "Email",
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
