import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_drawer.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';
import 'package:rideshare/view/notification/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Padding(
          padding: devicePadding,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
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
      ),
      body: Stack(
        children: [
          Image.asset(
            AppAssets.map,
            width: screenWidth,
            height: screenHeight,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: IconButton(
                  onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                  icon: const Icon(Icons.menu, size: 25),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationScreen(),
                      ));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 40, right: 10),
                  child: Container(
                    width: screenWidth / 12,
                    height: screenHeight / 30,
                    color: AppColors.whiteColor,
                    child: Icon(
                      Icons.notifications_none,
                      size: 25,
                      color: AppColors.darkGrayColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // DefaultTabController(
          //   length: 2,
          //   child: Scaffold(
          //     appBar: AppBar(
          //       bottom: const TabBar(
          //         tabs: [
          //           Tab(icon: Icon(Icons.directions_car)),
          //           Tab(icon: Icon(Icons.directions_transit)),
          //         ],
          //       ),
          //       title: const Text('Tabs Demo'),
          //     ),
          //     body: const TabBarView(
          //       children: [
          //         Icon(Icons.directions_car),
          //         Icon(Icons.directions_transit),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
