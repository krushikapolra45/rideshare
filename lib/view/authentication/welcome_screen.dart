import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_outline_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';
import 'package:rideshare/view/authentication/sign_up.dart';

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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                AppAssets.appWelCome,
                width: screenWidth / 1.1,
              ),
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
            AppButton(
              text: "create an account",
              width: screenWidth / 1.0,
              hight: screenHeight / 16,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
            ),
            AppOutlineButton(
              color: AppColors.darkGreenColor,
              text: "log in",
              width: screenWidth / 1.1,
              hight: screenHeight / 16,
              tColor: AppColors.darkGreenColor,
            ),
            SizedBox(height: screenHeight / 50),
          ],
        ),
      ),
    );
  }
}
