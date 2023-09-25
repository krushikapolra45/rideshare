import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({super.key});

  @override
  State<HelpAndSupportScreen> createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
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
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              AppArrowBack(
                name: "Help and support",
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Help and support",
                    style: TextStyle(
                      color: AppColors.darkGrayColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                textAlign: TextAlign.justify,
                AppStrings.help,
                style: TextStyle(
                  color: AppColors.neutralGray,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//import 'package:beep_car_wash/view/payment_screens/payment_screen.dart';
// import 'package:beep_car_wash/view/wash_history_screen/wash_history_screen.dart';
// import 'package:flutter/material.dart';
//
// import '../../res/common/drawer_screens.dart';
// import '../../res/constant/app_assets.dart';
// import '../../res/constant/app_colors.dart';
// import '../../res/constant/app_strings.dart';
// import '../how_it_works/how_it_works_screen.dart';
// import '../notifications_screen/notification_screen.dart';
//
// void main() {
//   runApp(const PopUpReferralCodeScreen());
// }
//
// final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
// Map mapdata = {
//   "text": "",
// };
//
// class PopUpReferralCodeScreen extends StatelessWidget {
//   const PopUpReferralCodeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double screenHeight = size.height;
//     double screenWidth = size.width;
//     EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           key: _scaffoldKey,
//           drawer: Drawer(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: screenHeight / 15),
//                   const Text(
//                     AppStrings.helloMartin,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       color: AppColors.darkGreenColor,
//                       fontSize: 28,
//                     ),
//                   ),
//                   const DrawerScreen(
//                     name: AppStrings.findABeep,
//                     image: AppAssets.findABeep,
//                     color: AppColors.lightBlackColor,
//                   ),
//                   DrawerScreen(
//                     name: AppStrings.washHistory,
//                     image: AppAssets.washHistory,
//                     color: AppColors.greyColor,
//                     onPress: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const WashHistoryScreen(),
//                         ),
//                       );
//                     },
//                   ),
//                   DrawerScreen(
//                     name: AppStrings.payments,
//                     image: AppAssets.payments,
//                     onPress: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const PaymentScreen(),
//                         ),
//                       );
//                     },
//                     color: AppColors.greyColor,
//                   ),
//                   DrawerScreen(
//                     name: AppStrings.notifications,
//                     image: AppAssets.notifications,
//                     color: AppColors.lightBlackColor,
//                     onPress: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const NotificationScreen(),
//                         ),
//                       );
//                     },
//                   ),
//                   DrawerScreen(
//                     name: AppStrings.works,
//                     image: AppAssets.howItWorks,
//                     color: AppColors.lightBlackColor,
//                     onPress: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const HowItWorksScreen(),
//                         ),
//                       );
//                     },
//                   ),
//                   const DrawerScreen(
//                     name: AppStrings.settings,
//                     image: AppAssets.settings,
//                     color: AppColors.lightBlackColor,
//                   ),
//                   const DrawerScreen(
//                     name: AppStrings.refer,
//                     image: AppAssets.gift,
//                     color: AppColors.darkGreenColor,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           appBar: AppBar(
//             backgroundColor: AppColors.whiteColor,
//             bottom: const TabBar(
//               tabs: [
//                 Tab(
//                   child: Text(
//                     AppStrings.referOperator,
//                     style: TextStyle(
//                       color: AppColors.darkGreenColor,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   child: Text(
//                     AppStrings.inviteFriends,
//                     style: TextStyle(
//                       color: AppColors.greyColor,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             title: const Text(
//               AppStrings.referral,
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 color: AppColors.lightBlackColor,
//                 fontSize: 20,
//               ),
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               Column(
//                 children: [
//                   Image.asset(
//                     AppAssets.undrawGift,
//                     height: screenHeight / 4.5,
//                     // width: screenWidth / 5.5,
//                   ),
//                   SizedBox(height: screenHeight / 80),
//                   const Text(
//                     AppStrings.spreadTheWealth,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 28,
//                       color: AppColors.lightBlackColor,
//                     ),
//                   ),
//                   SizedBox(height: screenHeight / 70),
//                   const Text(
//                     textAlign: TextAlign.center,
//                     AppStrings.operator,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 15,
//                       color: AppColors.greyColor,
//                     ),
//                   ),
//                   SizedBox(height: screenHeight / 40),
//                   Row(
//                     children: [
//                       SizedBox(width: screenWidth / 20),
//                       Container(
//                         height: 46,
//                         width: 46,
//                         decoration: BoxDecoration(
//                           color: AppColors.lightGreen,
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             textAlign: TextAlign.center,
//                             "1",
//                             style: TextStyle(
//                               color: AppColors.darkGreenColor,
//                               fontSize: 17,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: screenWidth / 20),
//                       Column(
//                         children: [
//                           const Text(
//                             AppStrings.sharingCode,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 17,
//                               color: AppColors.lightBlackColor,
//                             ),
//                           ),
//                           SizedBox(height: screenHeight / 100),
//                           const Text(
//                             AppStrings.codeApp,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 15,
//                               color: AppColors.greyColor,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(height: screenHeight / 40),
//                   Row(
//                     children: [
//                       SizedBox(width: screenWidth / 20),
//                       Container(
//                         height: 46,
//                         width: 46,
//                         decoration: BoxDecoration(
//                           color: AppColors.lightGreen,
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             textAlign: TextAlign.center,
//                             "2",
//                             style: TextStyle(
//                               color: AppColors.darkGreenColor,
//                               fontSize: 17,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: screenWidth / 20),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             textAlign: TextAlign.start,
//                             AppStrings.beepOperation,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 17,
//                               color: AppColors.lightBlackColor,
//                             ),
//                           ),
//                           SizedBox(height: screenHeight / 100),
//                           const Text(
//                             AppStrings.onceBeepOperation,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 15,
//                               color: AppColors.greyColor,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(height: screenHeight / 40),
//                   Row(
//                     children: [
//                       SizedBox(width: screenWidth / 20),
//                       Container(
//                         height: 46,
//                         width: 46,
//                         decoration: BoxDecoration(
//                           color: AppColors.lightGreen,
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             textAlign: TextAlign.center,
//                             "3",
//                             style: TextStyle(
//                               color: AppColors.darkGreenColor,
//                               fontSize: 17,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: screenWidth / 20),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             AppStrings.bothEarn,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 17,
//                               color: AppColors.lightBlackColor,
//                             ),
//                           ),
//                           SizedBox(height: screenHeight / 100),
//                           const Text(
//                             AppStrings.withdrawal,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 15,
//                               color: AppColors.greyColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: screenHeight / 60),
//                   TextButton(
//                     onPressed: () {},
//                     child: const Text(
//                       "termsApply",
//                       style: TextStyle(
//                         color: AppColors.darkGreenColor,
//                         fontSize: 17,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight / 40),
//                   ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
//                       fixedSize: MaterialStatePropertyAll(
//                         Size(screenWidth / 1.1, screenHeight / 16),
//                       ),
//                       shape: MaterialStatePropertyAll(
//                         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                       ),
//                     ),
//                     // onPressed: onPress ?? () {},
//                     onPressed: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) => const AddPaymentMethodScreen(),
//                       //   ),
//                       // );
//                     },
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           textAlign: TextAlign.center,
//                           AppStrings.inviteFriend,
//                           style: TextStyle(
//                             fontSize: 17,
//                             color: AppColors.whiteColor,
//                             fontWeight: FontWeight.w500,
//                             fontFamily: "Poppins",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Image.asset(
//                     AppAssets.addFriend,
//                     width: screenWidth / 2.3,
//                     height: screenHeight / 4.5,
//                   ),
//                   SizedBox(height: screenHeight / 60),
//                   const Text(
//                     AppStrings.spreadTheWealth,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 28,
//                       color: AppColors.lightBlackColor,
//                     ),
//                   ),
//                   SizedBox(height: screenHeight / 70),
//                   const Text(
//                     textAlign: TextAlign.center,
//                     AppStrings.personalFriend,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 15,
//                       color: AppColors.greyColor,
//                     ),
//                   ),
//                   SizedBox(height: screenHeight / 40),
//                   Row(
//                     children: [
//                       SizedBox(width: screenWidth / 20),
//                       Container(
//                         height: 46,
//                         width: 46,
//                         decoration: BoxDecoration(
//                           color: AppColors.lightGreen,
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             textAlign: TextAlign.center,
//                             "1",
//                             style: TextStyle(
//                               color: AppColors.darkGreenColor,
//                               fontSize: 17,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: screenWidth / 20),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             AppStrings.inviteeCode,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 17,
//                               color: AppColors.lightBlackColor,
//                             ),
//                           ),
//                           SizedBox(height: screenHeight / 100),
//                           const Text(
//                             AppStrings.firstWash,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 15,
//                               color: AppColors.greyColor,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(height: screenHeight / 40),
//                   Row(
//                     children: [
//                       SizedBox(width: screenWidth / 20),
//                       Container(
//                         height: 46,
//                         width: 46,
//                         decoration: BoxDecoration(
//                           color: AppColors.lightGreen,
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             textAlign: TextAlign.center,
//                             "2",
//                             style: TextStyle(
//                               color: AppColors.darkGreenColor,
//                               fontSize: 17,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: screenWidth / 20),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             textAlign: TextAlign.start,
//                             AppStrings.freeWash,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 17,
//                               color: AppColors.lightBlackColor,
//                             ),
//                           ),
//                           SizedBox(height: screenHeight / 100),
//                           const Text(
//                             AppStrings.freeBeepWash,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 15,
//                               color: AppColors.greyColor,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(height: screenHeight / 40),
//                   Row(
//                     children: [
//                       SizedBox(width: screenWidth / 20),
//                       Container(
//                         height: 46,
//                         width: 46,
//                         decoration: BoxDecoration(
//                           color: AppColors.lightGreen,
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             textAlign: TextAlign.center,
//                             "3",
//                             style: TextStyle(
//                               color: AppColors.darkGreenColor,
//                               fontSize: 17,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: screenWidth / 20),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             AppStrings.beepLoveOnes,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 17,
//                               color: AppColors.lightBlackColor,
//                             ),
//                           ),
//                           SizedBox(height: screenHeight / 100),
//                           const Text(
//                             AppStrings.nextWash,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 15,
//                               color: AppColors.greyColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: screenHeight / 60),
//                   TextButton(
//                     onPressed: () {},
//                     child: const Text(
//                       "termsApply",
//                       style: TextStyle(
//                         color: AppColors.darkGreenColor,
//                         fontSize: 17,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight / 40),
//                   ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
//                       fixedSize: MaterialStatePropertyAll(
//                         Size(screenWidth / 1.1, screenHeight / 16),
//                       ),
//                       shape: MaterialStatePropertyAll(
//                         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                       ),
//                     ),
//                     // onPressed: onPress ?? () {},
//                     onPressed: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) => const AddPaymentMethodScreen(),
//                       //   ),
//                       // );
//                     },
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           textAlign: TextAlign.center,
//                           AppStrings.inviteFriend,
//                           style: TextStyle(
//                             fontSize: 17,
//                             color: AppColors.whiteColor,
//                             fontWeight: FontWeight.w500,
//                             fontFamily: "Poppins",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//      ),
// );
// }
// }
