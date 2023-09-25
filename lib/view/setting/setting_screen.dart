import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_setting.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const AppArrowBack(
                name: "referral",
              ),
              AppSetting(
                name: "change password",
              ),
              SizedBox(height: screenHeight / 40),
              AppSetting(
                name: "change language",
              ),
              SizedBox(height: screenHeight / 40),
              AppSetting(
                name: "privacy policy",
              ),
              SizedBox(height: screenHeight / 40),
              AppSetting(
                name: "contact us",
              ),
              SizedBox(height: screenHeight / 40),
              AppSetting(
                name: "delete account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
