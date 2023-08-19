import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppCarDetails extends StatelessWidget {
  const AppCarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.dlGreenColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        color: AppColors.sKay,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.battery_charging_full_outlined,
            size: 30,
            color: AppColors.dlGrayColor,
          ),
          Text(
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.dlGrayColor,
            ),
          ),
          Text(
            AppStrings.specification,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.dlGrayColor,
            ),
          ),
        ],
      ),
    );
  }
}
