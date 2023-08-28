import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_drawer.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class AppDrawerScreen extends StatelessWidget {
  const AppDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Padding(
      padding: devicePadding,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                  Text(
                    AppStrings.dTitle,
                    style: TextStyle(
                      color: AppColors.darkGrayColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 30),
              Image.asset(
                AppAssets.drawerP,
                width: screenWidth / 3,
                height: 90,
              ),
              SizedBox(height: screenHeight / 30),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  AppStrings.dName,
                  style: TextStyle(
                    color: AppColors.darkGrayColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  AppStrings.dGmail,
                  style: TextStyle(
                    color: AppColors.darkGrayColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 20),
              const AppDrawer(
                text: AppStrings.dHistory,
                image: AppAssets.dh,
              ),
              const AppDrawer(
                text: AppStrings.dComplain,
                image: AppAssets.dc,
              ),
              const AppDrawer(
                text: AppStrings.dReferral,
                image: AppAssets.dr,
              ),
              const AppDrawer(
                text: AppStrings.dAboutUs,
                image: AppAssets.da,
              ),
              const AppDrawer(
                text: AppStrings.dSettings,
                image: AppAssets.ds,
              ),
              const AppDrawer(
                text: AppStrings.dHelpAndSupport,
                image: AppAssets.dhs,
              ),
              const AppDrawer(
                text: AppStrings.dLogout,
                image: AppAssets.dl,
              )
            ],
          ),
        ),
      ),
    );
  }
}
