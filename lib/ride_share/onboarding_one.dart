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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
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
            const SizedBox(height: 80),
            Expanded(
              child: OnBoardingAnimation(
                pages: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images_one/Anywhere you.png",
                        width: screenWidth / 1.1,
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Anywhere you are",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF414141),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
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
                      // CircularPercentIndicator(
                      //   radius: 50.0,
                      //   lineWidth: 10.0,
                      //   percent: 0.8,
                      //   header: const Text("Icon header"),
                      //   center: const Icon(
                      //     Icons.person_pin,
                      //     size: 50.0,
                      //     color: Colors.blue,
                      //   ),
                      //   backgroundColor: Colors.grey,
                      //   progressColor: Colors.blue,
                      // ),
                      // CircularPercentIndicator(
                      //   radius: 50.0,
                      //   animation: true,
                      //   animationDuration: 1200,
                      //   lineWidth: 15.0,
                      //   percent: 0.4,
                      //   center: const Text(
                      //     "40 hours",
                      //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      //   ),
                      //   circularStrokeCap: CircularStrokeCap.butt,
                      //   backgroundColor: Colors.yellow,
                      //   progressColor: Colors.red,
                      // ),
                      // CircularPercentIndicator(
                      //   radius: .0,
                      //   lineWidth: 13.0,
                      //   animation: true,
                      //   percent: 0.7,
                      //   center: const Text(
                      //     "70.0%",
                      //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      //   ),
                      //   footer: const Text(
                      //     "Sales this week",
                      //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                      //   ),
                      //   circularStrokeCap: CircularStrokeCap.round,
                      //   progressColor: Colors.purple,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(15.0),
                      //   child: CircularPercentIndicator(
                      //     radius: 60.0,
                      //     lineWidth: 5.0,
                      //     percent: 1.0,
                      //     center: const Text("100%"),
                      //     progressColor: Colors.green,
                      //   ),
                      // ),

                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        percent: 0.30,
                        center: const Icon(Icons.arrow_forward),
                        backgroundColor: Color(0xFFB9E5D1),
                        progressColor: Color(0xFF08B783),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      // CircularPercentIndicator(
                      //   radius: 45.0,
                      //   lineWidth: 4.0,
                      //   percent: 0.60,
                      //   center: const Text("60%"),
                      //   progressColor: Colors.yellow,
                      // ),
                      // const Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 10.0),
                      // ),
                      // CircularPercentIndicator(
                      //   radius: 45.0,
                      //   lineWidth: 4.0,
                      //   percent: 0.90,
                      //   center: const Text("90%"),
                      //   progressColor: Colors.green,
                      // )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images_one/At anytime.png",
                        width: screenWidth / 1.1,
                        // height: 208,
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "At anytime",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF414141),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
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
                        backgroundColor: Color(0xFFB9E5D1),
                        progressColor: Color(0xFF08B783),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images_one/book car.png",
                        width: screenWidth / 1.1,
                        // height: 208,
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Book your car",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF414141),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
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
                        backgroundColor: Color(0xFFB9E5D1),
                        progressColor: Color(0xFF08B783),
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
