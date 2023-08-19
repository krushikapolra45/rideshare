import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_outline_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class SelectAvailableCar extends StatefulWidget {
  const SelectAvailableCar({Key? key}) : super(key: key);

  @override
  State<SelectAvailableCar> createState() => _SelectAvailableCarState();
}

class _SelectAvailableCarState extends State<SelectAvailableCar> {
  List<Map<String, dynamic>> colortextList = [
    {
      "carName": AppStrings.carOne,
      "image": AppAssets.carOne,
      "list": AppStrings.list,
      "location": AppStrings.location,
    },
    {
      "carName": AppStrings.carTwo,
      "image": AppAssets.carTwo,
      "list": AppStrings.list,
      "location": AppStrings.location,
    },
    {
      "carName": AppStrings.carThree,
      "image": AppAssets.carThree,
      "list": AppStrings.list,
      "location": AppStrings.location,
    },
    {
      "carName": AppStrings.carFour,
      "image": AppAssets.carFour,
      "list": AppStrings.list,
      "location": AppStrings.location,
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const AppArrowBack(),
                SizedBox(height: screenHeight / 60),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppStrings.carHedding,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppStrings.cText,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectAvailableCar(),
                      ),
                    );
                  },
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: colortextList.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        height: screenHeight / 5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.dlGreenColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.sKay,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        colortextList[index]["carName"],
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.dlGrayColor,
                                        ),
                                      ),
                                      Text(
                                        colortextList[index]["list"],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.grayColor,
                                        ),
                                      ),
                                      Text(
                                        colortextList[index]["location"],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darkGrayColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    colortextList[index]["image"],
                                    height: screenHeight / 10,
                                    width: screenWidth / 5,
                                  ),
                                ],
                              ),
                            ),
                            AppOutlineButton(
                              color: AppColors.darkGreenColor,
                              text: AppStrings.button,
                              width: screenWidth / 1.1,
                              hight: screenHeight / 16,
                              tColor: AppColors.darkGreenColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                        // height: 50,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
