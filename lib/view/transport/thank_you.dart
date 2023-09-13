import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class ThankYou extends StatefulWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
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
            SizedBox(height: screenHeight / 5),
            Image.asset(
              AppAssets.tq,
              width: screenWidth / 4,
            ),
            SizedBox(height: screenHeight / 40),
            const Text(
              AppStrings.thku,
              style: TextStyle(
                color: AppColors.dlGrayColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              AppStrings.thnkutext,
              style: TextStyle(
                color: AppColors.dlGrayColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: AppButton(
                text: "confirm ride",
                width: screenWidth / 1.0,
                height: screenHeight / 16,
                color: AppColors.darkGreenColor,
                onPress: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SignUp()),
                  // );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
