import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:percent_indicator/percent_indicator.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({Key? key}) : super(key: key);

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
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
              padding: EdgeInsets.all(
                screenWidth / 18.0,
              ),
              child: const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "skip",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF414141),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 9.0),
            Expanded(
              child: OnBoardingAnimation(
                pages: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/Anywhere you.png",
                        width: screenWidth / 1.1,
                      ),
                      SizedBox(height: screenHeight / 20),
                      const Text(
                        "Anywhere you are",
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
                        "Sell houses easily with the help of\nListenoryx and to make this line big\n I am writing more.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A0A0),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        percent: 0.30,
                        center: const Icon(Icons.arrow_forward),
                        backgroundColor: const Color(0xFFB9E5D1),
                        progressColor: const Color(0xFF08B783),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/At anytime.png",
                        width: screenWidth / 1.1,
                        // height: 208,
                      ),
                      SizedBox(height: screenHeight / 20),
                      const Text(
                        "At anytime",
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
                        "Sell houses easily with the help of\nListenoryx and to make this line big\n I am writing more.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A0A0),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        percent: 0.70,
                        center: const Icon(Icons.arrow_forward),
                        backgroundColor: const Color(0xFFB9E5D1),
                        progressColor: const Color(0xFF08B783),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/book car.png",
                        width: screenWidth / 1.1,
                        // height: 208,
                      ),
                      SizedBox(height: screenHeight / 20),
                      const Text(
                        "Book your car",
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
                        "Sell houses easily with the help of\nListenoryx and to make this line big\n I am writing more.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A0A0),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        percent: 0.90,
                        center: const Text("Go"),
                        backgroundColor: const Color(0xFFB9E5D1),
                        progressColor: const Color(0xFF08B783),
                      ),
                    ],
                  ),
                ],
                indicatorDotHeight: screenHeight / 140,
                indicatorDotWidth: screenWidth / 70,
                indicatorActiveDotColor: const Color(0xFFFFFFFF),
                indicatorType: IndicatorType.colourTransitionDots,
                indicatorPosition: IndicatorPosition.bottomCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
