import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_outline_button.dart';
import 'package:rideshare/res/common/app_wallet.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_strings.dart';

import '../../res/common/app_drawer_screen.dart';
import '../../res/constant/app_colors.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const AppDrawerScreen(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight / 21,
                    width: screenWidth / 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.dlGreenColor.withOpacity(0.50),
                    ),
                    child: IconButton(
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                      icon: const Icon(Icons.menu, size: 25),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: screenWidth / 12,
                  height: screenHeight / 30,
                  color: AppColors.whiteColor,
                  child: const Icon(
                    Icons.notifications_none,
                    size: 25,
                    color: AppColors.darkGrayColor,
                  ),
                ),
              ],
            ),
            AppOutlineButton(
              color: AppColors.darkGreenColor,
              width: screenWidth / 2.6,
              hight: screenHeight / 60,
              text: "Add Money",
              tColor: AppColors.darkGreenColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth / 2.4,
                  height: screenHeight / 6.5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.dlGreenColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.sKay,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        AppStrings.wPrice,
                        style: TextStyle(
                          color: AppColors.dlGrayColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: screenHeight / 60),
                      const Text(
                        AppStrings.balance,
                        style: TextStyle(
                          color: AppColors.dlGrayColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: screenWidth / 10),
                Container(
                  width: screenWidth / 2.4,
                  height: screenHeight / 6.5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.dlGreenColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.sKay,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        AppStrings.price,
                        style: TextStyle(
                          color: AppColors.dlGrayColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: screenHeight / 60),
                      const Text(
                        AppStrings.expend,
                        style: TextStyle(
                          color: AppColors.dlGrayColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 65),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const Text(
                    AppStrings.tranSection,
                    style: TextStyle(
                      color: AppColors.dlGrayColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: screenWidth / 1.9),
                  const Text(
                    AppStrings.see,
                    style: TextStyle(
                      color: AppColors.darkGreenColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const AppWallet(
              images: AppAssets.up,
              wText: AppStrings.welTon,
              tText: AppStrings.wtime,
              pText: AppStrings.down,
            ),
            const AppWallet(
              images: AppAssets.down,
              wText: AppStrings.nathsam,
              tText: AppStrings.wtime,
              pText: AppStrings.up,
            ),
            const AppWallet(
              images: AppAssets.up,
              wText: AppStrings.welTon,
              tText: AppStrings.wtime,
              pText: AppStrings.down,
            ),
            const AppWallet(
              images: AppAssets.down,
              wText: AppStrings.nathsam,
              tText: AppStrings.wtime,
              pText: AppStrings.up,
            ),
            const AppWallet(
              images: AppAssets.down,
              wText: AppStrings.nathsam,
              tText: AppStrings.wtime,
              pText: AppStrings.up,
            ),
          ],
        ),
      ),
    );
  }
}
