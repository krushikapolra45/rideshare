import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: devicePadding,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppArrowBack(
                name: "chat",
              ),
              Row(
                children: [
                  Image.asset(
                    AppAssets.drawerP,
                    width: screenWidth / 9,
                    height: 90,
                  ),
                  SizedBox(width: screenWidth / 40),
                  Container(
                    height: screenHeight / 15,
                    width: screenWidth / 3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: AppColors.dGrayColor,
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        AppStrings.chatOne,
                        style: TextStyle(
                          color: AppColors.dlGrayColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  children: [
                    Container(
                      height: screenHeight / 10,
                      width: screenWidth / 1.6,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        color: AppColors.dGrayColor,
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          AppStrings.chatTwo,
                          style: TextStyle(
                            color: AppColors.dlGrayColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 55,
                ),
                child: Text(
                  "8:29pm",
                  style: TextStyle(
                    color: AppColors.darkGrayColor.withOpacity(0.80),
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 20),
                child: Container(
                  height: screenHeight / 15,
                  width: screenWidth / 1.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      color: AppColors.sKay,
                      border: Border.all(color: AppColors.dlGreenColor)),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.chatThree,
                      style: TextStyle(
                        color: AppColors.dlGrayColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "8:29pm",
                  style: TextStyle(
                    color: AppColors.darkGrayColor.withOpacity(0.80),
                    fontSize: 12,
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    AppAssets.drawerP,
                    width: screenWidth / 9,
                    height: 90,
                  ),
                  SizedBox(width: screenWidth / 40),
                  Container(
                    height: screenHeight / 10,
                    width: screenWidth / 1.6,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: AppColors.dGrayColor,
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        AppStrings.chatTwo,
                        style: TextStyle(
                          color: AppColors.dlGrayColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 55,
                ),
                child: Text(
                  "8:29pm",
                  style: TextStyle(
                    color: AppColors.darkGrayColor.withOpacity(0.80),
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 20),
                child: Container(
                  height: screenHeight / 15,
                  width: screenWidth / 1.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      color: AppColors.sKay,
                      border: Border.all(color: AppColors.dlGreenColor)),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.chatThree,
                      style: TextStyle(
                        color: AppColors.dlGrayColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "just now",
                  style: TextStyle(
                    color: AppColors.darkGrayColor.withOpacity(0.80),
                    fontSize: 12,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    size: 20,
                    color: AppColors.dlGrayColor,
                  ),
                  Container(
                    height: screenHeight / 15,
                    width: screenWidth / 1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.grayColor,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "type your message",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.lGrayColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Icon(Icons.)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
