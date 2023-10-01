import 'package:flutter/material.dart';

import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({super.key});

  @override
  State<HelpAndSupportScreen> createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return MaterialApp(
      home: DefaultTabController(
        length: 3,



            Container(
            height: 50,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color(0x1F767680),
              borderRadius: BorderRadius.circular(10),
            ),
            title: const Text(
              AppStrings.referral,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.lightBlackColor,
                fontSize: 20,
              ),
            ),
           child: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    AppStrings.referOperator,
                    style: TextStyle(
                      color: AppColors.darkGreenColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    AppStrings.inviteFriends,
                    style: TextStyle(
                      color: AppColors.darkGreenColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),Tab(
                  child: Text(
                    AppStrings.inviteFriends,
                    style: TextStyle(
                      color: AppColors.darkGreenColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Image.asset(
                    AppAssets.undrawGift,
                    height: screenHeight / 4.5,
                    // width: screenWidth / 5.5,
                  ),
                  SizedBox(height: screenHeight / 80),
                  const Text(
                    AppStrings.spreadTheWealth,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: AppColors.lightBlackColor,
                    ),
                  ),
                  SizedBox(height: screenHeight / 70),
                  const Text(
                    textAlign: TextAlign.center,
                    AppStrings.operator,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  Row(
                    children: [
                      SizedBox(width: screenWidth / 20),
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "1",
                            style: TextStyle(
                              color: AppColors.darkGreenColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 20),
                      Column(
                        children: [
                          const Text(
                            AppStrings.sharingCode,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: AppColors.lightBlackColor,
                            ),
                          ),
                          SizedBox(height: screenHeight / 100),
                          const Text(
                            AppStrings.codeApp,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight / 40),
                  Row(
                    children: [
                      SizedBox(width: screenWidth / 20),
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "2",
                            style: TextStyle(
                              color: AppColors.darkGreenColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            textAlign: TextAlign.start,
                            AppStrings.beepOperation,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: AppColors.lightBlackColor,
                            ),
                          ),
                          SizedBox(height: screenHeight / 100),
                          const Text(
                            AppStrings.onceBeepOperation,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight / 40),
                  Row(
                    children: [
                      SizedBox(width: screenWidth / 20),
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "3",
                            style: TextStyle(
                              color: AppColors.darkGreenColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppStrings.bothEarn,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: AppColors.lightBlackColor,
                            ),
                          ),
                          SizedBox(height: screenHeight / 100),
                          const Text(
                            AppStrings.withdrawal,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight / 60),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "termsApply",
                      style: TextStyle(
                        color: AppColors.darkGreenColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
                      fixedSize: MaterialStatePropertyAll(
                        Size(screenWidth / 1.1, screenHeight / 16),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    // onPressed: onPress ?? () {},
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const AddPaymentMethodScreen(),
                      //   ),
                      // );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          AppStrings.inviteFriend,
                          style: TextStyle(
                            fontSize: 17,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppAssets.addFriend,
                    width: screenWidth / 2.3,
                    height: screenHeight / 4.5,
                  ),
                  SizedBox(height: screenHeight / 60),
                  const Text(
                    AppStrings.spreadTheWealth,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: AppColors.lightBlackColor,
                    ),
                  ),
                  SizedBox(height: screenHeight / 70),
                  const Text(
                    textAlign: TextAlign.center,
                    AppStrings.personalFriend,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  Row(
                    children: [
                      SizedBox(width: screenWidth / 20),
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "1",
                            style: TextStyle(
                              color: AppColors.darkGreenColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppStrings.inviteeCode,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: AppColors.lightBlackColor,
                            ),
                          ),
                          SizedBox(height: screenHeight / 100),
                          const Text(
                            AppStrings.firstWash,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight / 40),
                  Row(
                    children: [
                      SizedBox(width: screenWidth / 20),
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "2",
                            style: TextStyle(
                              color: AppColors.darkGreenColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            textAlign: TextAlign.start,
                            AppStrings.freeWash,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: AppColors.lightBlackColor,
                            ),
                          ),
                          SizedBox(height: screenHeight / 100),
                          const Text(
                            AppStrings.freeBeepWash,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight / 40),
                  Row(
                    children: [
                      SizedBox(width: screenWidth / 20),
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "3",
                            style: TextStyle(
                              color: AppColors.darkGreenColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppStrings.beepLoveOnes,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: AppColors.lightBlackColor,
                            ),
                          ),
                          SizedBox(height: screenHeight / 100),
                          const Text(
                            AppStrings.nextWash,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight / 60),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "termsApply",
                      style: TextStyle(
                        color: AppColors.darkGreenColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
                      fixedSize: MaterialStatePropertyAll(
                        Size(screenWidth / 1.1, screenHeight / 16),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    // onPressed: onPress ?? () {},
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const AddPaymentMethodScreen(),
                      //   ),
                      // );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          AppStrings.inviteFriend,
                          style: TextStyle(
                            fontSize: 17,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
     ),

    ),
);


  }
}



