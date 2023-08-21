import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_car_details.dart';
import 'package:rideshare/res/common/app_car_feature.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

import '../../res/common/app_outline_button.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const AppArrowBack(),
                SizedBox(height: screenHeight / 60),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppStrings.dHedding,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFBC02D),
                        size: 20,
                      ),
                      Text(
                        AppStrings.reviews,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grayColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight / 60),
                Row(
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_left,
                      size: 30,
                      color: AppColors.dlGrayColor,
                    ),
                    SizedBox(width: screenWidth / 50),
                    Image.asset(
                      AppAssets.carThree,
                      width: screenWidth / 1.4,
                    ),
                    SizedBox(width: screenWidth / 30),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      size: 30,
                      color: AppColors.dlGrayColor,
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppStrings.specification,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight / 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppCarDetails(
                      image: AppAssets.battery,
                      text: AppStrings.battery,
                      name: AppStrings.voalt,
                    ),
                    AppCarDetails(
                      image: AppAssets.desial,
                      text: AppStrings.fuel,
                      name: AppStrings.liter,
                    ),
                    AppCarDetails(
                      image: AppAssets.wight,
                      text: AppStrings.speed,
                      name: AppStrings.km,
                    ),
                    AppCarDetails(
                      image: AppAssets.mph,
                      text: AppStrings.mph,
                      name: AppStrings.sec,
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 50),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppStrings.feature,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                ),
                AppCarFeature(
                  name: AppStrings.fonee,
                  text: AppStrings.fOne,
                ),
                SizedBox(height: screenHeight / 70),
                AppCarFeature(
                  name: AppStrings.ftwoo,
                  text: AppStrings.fTwo,
                ),
                SizedBox(height: screenHeight / 70),
                AppCarFeature(
                  name: AppStrings.fthreee,
                  text: AppStrings.fThree,
                ),
                SizedBox(height: screenHeight / 70),
                AppCarFeature(
                  name: AppStrings.ffourr,
                  text: AppStrings.fFour,
                ),
                SizedBox(height: screenHeight / 70),
                AppCarFeature(
                  name: AppStrings.fFivee,
                  text: AppStrings.fFive,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppOutlineButton(
                      color: AppColors.darkGreenColor,
                      text: AppStrings.oButton,
                      width: screenWidth / 2.5,
                      hight: screenHeight / 16,
                      tColor: AppColors.darkGreenColor,
                    ),
                    AppButton(
                      text: AppStrings.Button,
                      width: screenWidth / 2.5,
                      height: screenHeight / 16,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
