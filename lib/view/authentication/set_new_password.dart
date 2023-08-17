import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({Key? key}) : super(key: key);

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
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
            const Text(
              AppStrings.password,
              style: TextStyle(
                color: AppColors.darkGrayColor,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              AppStrings.sPassword,
              style: TextStyle(
                color: AppColors.lightGrayColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.lastLine,
                style: TextStyle(
                  color: AppColors.ldGrayColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            AppButton(
              text: "Register",
              width: screenWidth / 1.0,
              height: screenHeight / 16,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
