import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({Key? key}) : super(key: key);

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
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
            Padding(
              padding: EdgeInsets.all(screenWidth / 18.0),
              child: const Align(
                alignment: Alignment.topRight,
                child: Text(
                  AppStrings.appTitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.darkGrayColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 9.0),
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        AppAssets.appOnBoarding,
                        width: screenWidth / 1.1,
                      ),
                      SizedBox(height: screenHeight / 20),
                      const Text(
                        AppStrings.hadding,
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.darkGrayColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: screenHeight / 60),
                      Text(
                        AppStrings.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightGrayColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        AppAssets.appOnBoardingTime,
                        width: screenWidth / 1.1,
                        // height: 208,
                      ),
                      SizedBox(height: screenHeight / 20),
                      const Text(
                        AppStrings.haddingSecond,
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.darkGrayColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: screenHeight / 60),
                      const Text(
                        textAlign: TextAlign.center,
                        AppStrings.text,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightGrayColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        AppAssets.appBookCar,
                        width: screenWidth / 1.1,
                        // height: 208,
                      ),
                      SizedBox(height: screenHeight / 20),
                      const Text(
                        AppStrings.haddingThird,
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.darkGrayColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: screenHeight / 60),
                      const Text(
                        textAlign: TextAlign.center,
                        AppStrings.text,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightGrayColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
