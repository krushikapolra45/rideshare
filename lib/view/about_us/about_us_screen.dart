import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
              SizedBox(height: screenHeight / 30),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.about,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.dlGrayColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
