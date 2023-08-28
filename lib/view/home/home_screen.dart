import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_drawer_screen.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
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
        drawer: AppDrawerScreen(),
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
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationScreen(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, right: 10),
                    child: Container(
                      width: screenWidth / 12,
                      height: screenHeight / 30,
                      color: AppColors.whiteColor,
                      child: const Icon(
                        Icons.notifications_none,
                        size: 25,
                        color: AppColors.darkGrayColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
