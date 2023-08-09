import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // Completer<GoogleMapController> _controller = Completer();
  //
  // static const LatLng _center = const LatLng(45.521563, -122.677433);
  //
  // void _onMapCreated(GoogleMapController controller) {
  //   _controller.complete(controller);
  // }
  //
  // static const CameraPosition _kLake = CameraPosition(bearing: 192.8334901395799, target: LatLng(37.43296265331129, -122.08832357078792), tilt: 59.440717697143555, zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenHeight / 35),
              child: Image.asset(
                AppAssets.appWelCome,
                width: screenWidth / 1.1,
              ),
            ),
            // SizedBox(height: screenHeight / 15),
            const Text(
              AppStrings.welComeTitle,
              style: TextStyle(
                fontSize: 24,
                color: AppColors.darkGrayColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight / 20),
            const Text(
              AppStrings.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.lightGrayColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            AppButton(
              text: "create an account",
              width: screenWidth / 1.1,
              hight: screenHeight/20,
              onPress: (){},
            ),
          ],
        ),
      ),
    );
  }
}

// ),
