import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class AppArrowBack extends StatelessWidget {
  const AppArrowBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: EdgeInsets.all(screenWidth / 22),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: AppColors.darkGrayColor,
            size: 16,
          ),
          const Text(AppStrings.authenticationTitle,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.darkGrayColor,
              )),
          SizedBox(width: screenWidth / 22),
          const Text(AppStrings.profile,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.darkGrayColor,
              )),
        ],
      ),
    );
  }
}
