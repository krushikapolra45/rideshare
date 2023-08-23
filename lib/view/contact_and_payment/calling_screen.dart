import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class CallingScreen extends StatefulWidget {
  const CallingScreen({super.key});

  @override
  State<CallingScreen> createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: devicePadding,
        child: Column(
          children: [
            const AppArrowBack(),
            SizedBox(height: screenHeight / 5),
            Image.asset(
              AppAssets.drawerP,
              width: screenWidth / 5,
              height: 90,
            ),
            Text(
              "Sergio Ramasis",
              style: TextStyle(
                color: AppColors.dlGrayColor,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Calling....",
              style: TextStyle(
                color: AppColors.grayColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenHeight / 15,
                    width: screenWidth / 8,
                    decoration: BoxDecoration(
                      color: AppColors.sKay,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                  Container(
                    height: screenHeight / 15,
                    width: screenWidth / 8,
                    decoration: BoxDecoration(
                      color: AppColors.sKay,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.mic_off_rounded,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                  Container(
                    height: screenHeight / 10,
                    width: screenWidth / 5,
                    decoration: BoxDecoration(
                      color: AppColors.dGreenColor.withOpacity(0.80),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.phone,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Container(
                    height: screenHeight / 15,
                    width: screenWidth / 8,
                    decoration: BoxDecoration(
                      color: AppColors.sKay,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.video_call_outlined,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                  Container(
                    height: screenHeight / 15,
                    width: screenWidth / 8,
                    decoration: BoxDecoration(
                      color: AppColors.sKay,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: AppColors.dlGrayColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
