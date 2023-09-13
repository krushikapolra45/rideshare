import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

import '../../res/common/app_feedback_screen.dart';

class SimpleDialogScreen extends StatefulWidget {
  const SimpleDialogScreen({super.key});

  @override
  State<SimpleDialogScreen> createState() => _SimpleDialogScreenState();
}

class _SimpleDialogScreenState extends State<SimpleDialogScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Dialog(
      insetPadding: const EdgeInsets.all(15),
      backgroundColor: Colors.white,
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CloseButton(
              onPressed: () {},
            ),
          ),
          Image.asset(
            AppAssets.tq,
            width: screenWidth / 3,
            height: screenHeight / 10,
          ),
          SizedBox(height: screenHeight / 50),
          const Text(
            AppStrings.dtitle,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: AppColors.dlGrayColor,
            ),
          ),
          SizedBox(height: screenHeight / 50),
          const Text(
            textAlign: TextAlign.center,
            AppStrings.contain,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.lGray,
            ),
          ),
          SizedBox(height: screenHeight / 50),
          const Text(
            AppStrings.amount,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.dlGrayColor,
            ),
          ),
          SizedBox(height: screenHeight / 40),
          const Text(
            AppStrings.dprice,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w400,
              color: AppColors.dlGrayColor,
            ),
          ),
          const Divider(
            color: AppColors.grayColor,
            thickness: 1,
          ),
          SizedBox(height: screenHeight / 50),
          const Text(
            AppStrings.trip,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.dlGrayColor,
            ),
          ),
          SizedBox(height: screenHeight / 50),
          Text(
            textAlign: TextAlign.center,
            AppStrings.tripText,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.dlGrayColor.withOpacity(0.50),
            ),
          ),
          SizedBox(height: screenHeight / 50),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: AppButton(
              text: "please feedback",
              width: screenWidth / 1.2,
              height: screenHeight / 16,
              onPress: () {
                showModalBottomSheet(
                  context: context,
                  showDragHandle: true,
                  useSafeArea: true,
                  isScrollControlled: true,
                  elevation: 0,
                  builder: (context) => Column(
                    children: [
                      CloseButton(
                        onPressed: () {},
                      ),
                      Image.asset(
                        AppAssets.feedback,
                        width: screenWidth / 3,
                        height: screenHeight / 15,
                      ),
                      Text(
                        AppStrings.feedback,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkGreenColor.withOpacity(0.70),
                        ),
                      ),
                      SizedBox(height: screenHeight / 50),
                      const Text(
                        AppStrings.rate,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grayColor,
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: screenHeight / 10,
                          width: screenWidth / 1,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColors.grayColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            AppStrings.ftext,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.lGrayColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      const Text(
                        AppStrings.sergio,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.dlGrayColor,
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppFeedbackScreen(
                              color: AppColors.lGrayColor,
                              colortext: AppColors.dlGrayColor,
                              name: "\$1",
                            ),
                            AppFeedbackScreen(
                              color: AppColors.dlGreenColor,
                              colortext: AppColors.dlGreenColor,
                              name: "\$2",
                            ),
                            AppFeedbackScreen(
                              color: AppColors.lGrayColor,
                              colortext: AppColors.dlGrayColor,
                              name: "\$3",
                            ),
                            AppFeedbackScreen(
                              color: AppColors.lGrayColor,
                              colortext: AppColors.dlGrayColor,
                              name: "\$4",
                            ),
                            AppFeedbackScreen(
                              color: AppColors.lGrayColor,
                              colortext: AppColors.dlGrayColor,
                              name: "\$5",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
                      const Text(
                        AppStrings.famount,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.dlGreenColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AppButton(
                            width: screenWidth,
                            height: screenHeight / 16,
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
                                          Image.asset(
                                            AppAssets.tq,
                                            width: screenWidth / 3,
                                            height: screenHeight / 10,
                                          ),
                                          const Text(
                                            AppStrings.thku,
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.dlGrayColor,
                                            ),
                                          ),
                                          const Text(
                                            textAlign: TextAlign.center,
                                            AppStrings.thnkutexttwo,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.lGray,
                                            ),
                                          ),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
// ListView.separated(
// physics: const NeverScrollableScrollPhysics(),
// shrinkWrap: true,
// itemCount: colortextList.length,
// itemBuilder: (context, index) => Padding(
// padding: const EdgeInsets.only(left: 20, right: 20),
// child: Container(
// width: 343,
// height: 260,
// color: colortextList[index]["color"],
// alignment: Alignment.topCenter,
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 10),
// child: Image.asset(
// colortextList[index]["image"],
// width: 319,
// height: 148,
// ),
// ),
// const SizedBox(height: 15),
// Text(
// colortextList[index]["title"],
// style: const TextStyle(
// fontSize: 10,
// fontFamily: "Inter",
// ),
// textAlign: TextAlign.center,
// ),
// const SizedBox(
// height: 20,
// ),
// Text(
// colortextList[index]["date"],
// style: const TextStyle(
// fontSize: 15,
// fontFamily: "Inter",
// color: Color(0xFF667085),
// ),
// ),
// ],
// ),
// ),
// ),
// separatorBuilder: (context, index) => const SizedBox(
// height: 30,
// ),
// ),
// List<Map<String, dynamic>> colortextList = [
// {
// "color": Colors.white,
// "title": "National Statistics Center Obtain a certificate of ISO 9001 and \n certificate of ISO 10015.",
// "image": "assets/images_nine/images_first.png",
// "date": "january 2022",
// },
