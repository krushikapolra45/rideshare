import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_email_text_filed.dart';
import 'package:rideshare/res/common/app_name_text_filed.dart';
import 'package:rideshare/res/common/app_number_text_filed.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          children: [
            const AppArrowBack(),
            Padding(
              padding: EdgeInsets.all(screenWidth / 22),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign up with your email or\nphone number",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrayColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 25),
              child: AppNameTextFiled(),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 25),
              child: const AppEmailTextFiled(),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 25),
              child: AppNumberTextFiled(),
            ),
          ],
        ),
      ),
    );
  }
}
