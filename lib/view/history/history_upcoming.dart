import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';

class HistoryUpComing extends StatefulWidget {
  const HistoryUpComing({super.key});

  @override
  State<HistoryUpComing> createState() => _HistoryUpComingState();
}

class _HistoryUpComingState extends State<HistoryUpComing> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: devicePadding,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppArrowBack(
                  name: "history",
                ),
                const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  splashBorderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "upcoming",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "completed",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "cancelled",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 120,
                  width: 420,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF76BA3F),
                        Color(0xFFFFFFFF),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1A000000),
                        offset: Offset(0, 4),
                        blurRadius: 50,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Create a plan ",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Curate groceries the way you like",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "How it works",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color(0xFF025E06),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/images_six/full_images.png",
                          width: 100,
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 50,
                      child: const Text(
                        "may",
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 50,
                      child: const Text(
                        "Jun",
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF76BA3F),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Jul",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 50,
                      child: const Text(
                        "Aug",
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 60,
                      child: const Text(
                        "sep",
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEBEBF0),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.arrow_back_ios, size: 20),
                      SizedBox(
                        width: 80,
                      ),
                      Text("04 July - 10 July", textAlign: TextAlign.center),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Monday, 3 June",
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Icon(
                              Icons.keyboard_arrow_up_outlined,
                              size: 40,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Morning",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Image.asset(
                                  "assets/images_six/Add Card 1.png",
                                  width: 70,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Afternoon",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Image.asset(
                                  "assets/images_six/breakfast.png",
                                  width: 70,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "evening",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Image.asset(
                                  "assets/images_six/Add Card 4.png",
                                  width: 70,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "night",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Image.asset(
                                  "assets/images_six/Add Card 4.png",
                                  width: 70,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.black12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tuesday, 4 June",
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.black12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wednesday, 5 June",
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
