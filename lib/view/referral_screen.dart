import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
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
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.referral,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkGrayColor,
                ),
              ),
            ),
            SizedBox(height: screenHeight / 30),
            TextField(
              decoration: InputDecoration(
                focusColor: AppColors.grayColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                // filled: false,
                suffixIcon: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text(
                        "fsgghry",
                        style: TextStyle(
                          color: AppColors.darkGrayColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      // Icon(
                      //   Icons.,
                      //   color: AppColors.darkGrayColor,
                      //   size: 30,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppButton(
                width: screenWidth,
                height: screenHeight / 16,
                color: AppColors.darkGreenColor,
                text: "Back Home",
                onPress: () {},
              ),
            ),
          ],
        ),
      )),
    );
  }
}
