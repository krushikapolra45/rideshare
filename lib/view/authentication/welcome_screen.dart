import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            Image.asset(
              AppAssets.appWelCome,
              width: screenWidth / 1.1,
            ),
            // SizedBox(height: screenHeight / 15),
            const Text(
              AppStrings.welComeTitle,
              style: TextStyle(
                fontSize: 24,
                color: AppColors.darkGrayColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight / 50),
            const Text(
              AppStrings.welComeText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.lightGrayColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: AppButton(
                text: "create an account",
                width: screenWidth / 1.0,
                hight: screenHeight / 16,
                onPress: () {},
              ),
            ),
            SizedBox(height: screenHeight / 50),
            Padding(
              padding: EdgeInsets.all(screenWidth / 18.0),
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  fixedSize: MaterialStatePropertyAll(
                    Size(screenWidth / 1.0, screenHeight / 16),
                  ),
                  side: const MaterialStatePropertyAll(BorderSide(
                    color: AppColors.darkGreenColor,
                    width: 1,
                  )),
                ),
                onPressed: () {},
                child: const Text(
                  "log in",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.darkGreenColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 1.1),
          ],
        ),
      ),
    );
  }
}
