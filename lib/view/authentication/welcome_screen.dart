import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenHeight / 35),
              child: Image.asset(
                "assets/images/Welcome Screen.png",
                width: screenWidth / 1.1,
              ),
            ),
            SizedBox(height: screenHeight / 15),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF414141),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight / 60),
            const Text(
              textAlign: TextAlign.center,
              "Have a better sharing experience",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFA0A0A0),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
