import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_notification.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppArrowBack(
                name: "notification",
              ),
              const Text(
                AppStrings.nText,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: screenHeight / 50),
              AppNotification(
                color: AppColors.sKay,
                time: AppStrings.time,
              ),
              AppNotification(
                time: AppStrings.secondTime,
              ),
              Text(
                AppStrings.sText,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: screenHeight / 50),
              AppNotification(
                color: AppColors.sKay,
                time: AppStrings.time,
              ),
              AppNotification(
                time: AppStrings.secondTime,
              ),
              AppNotification(
                time: AppStrings.secondTime,
              ),
              AppNotification(
                color: AppColors.sKay,
                time: AppStrings.time,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
