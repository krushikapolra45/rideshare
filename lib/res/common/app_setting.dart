import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppSetting extends StatelessWidget {
  final String? name;
  const AppSetting({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;

    return Container(
      height: screenHeight / 14,
      width: screenWidth / 1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.dlGreenColor,
            width: 1,
          )),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              name ?? "",
              style: TextStyle(
                color: AppColors.darkGrayColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 24,
              color: AppColors.darkGrayColor,
            ),
          ],
        ),
      ),
    );
  }
}
