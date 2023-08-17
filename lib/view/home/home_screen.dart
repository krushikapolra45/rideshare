import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Padding(
      padding: devicePadding,
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          elevation: 0,
          child: Column(
            children: [],
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                // Image.asset(
                //   AppAssets.map,
                //   width: screenWidth,
                //   height: screenHeight,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
