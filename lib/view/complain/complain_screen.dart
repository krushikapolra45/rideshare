import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class ComplainScreen extends StatefulWidget {
  const ComplainScreen({super.key});

  @override
  State<ComplainScreen> createState() => _ComplainScreenState();
}

class _ComplainScreenState extends State<ComplainScreen> {
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
                name: "complain",
              ),
              SizedBox(height: screenHeight / 30),
              TextField(
                decoration: InputDecoration(
                  focusColor: AppColors.lGrayColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: false,
                  suffixIcon: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text(
                          "Vehicle not clean",
                          style: TextStyle(
                            color: AppColors.darkGrayColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.darkGrayColor,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 30),
              Container(
                height: screenHeight / 7,
                width: screenWidth / 1,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.grayColor,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.complain,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lGrayColor,
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
                    text: "submit",
                    onPress: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              elevation: 0,
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CloseButton(
                                    onPressed: () {},
                                  ),
                                  Image.asset(
                                    AppAssets.tq,
                                    width: screenWidth / 3,
                                    height: screenHeight / 10,
                                  ),
                                  SizedBox(height: screenHeight / 60),
                                  const Text(
                                    AppStrings.dialog,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.dlGrayColor,
                                    ),
                                  ),
                                  const Text(
                                    textAlign: TextAlign.center,
                                    AppStrings.dtext,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.lGray,
                                    ),
                                  ),
                                  SizedBox(height: screenHeight / 60),
                                  AppButton(
                                    text: "back Home",
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
                                ],
                              ),
                            );
                          });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
