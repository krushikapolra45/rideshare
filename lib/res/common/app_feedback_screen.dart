import 'package:flutter/material.dart';

class AppFeedbackScreen extends StatelessWidget {
  final String? name;
  final Color? color;
  final Color? colortext;
  const AppFeedbackScreen({super.key, this.name, this.color, this.colortext});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Container(
      height: screenHeight / 15,
      width: screenWidth / 7,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: color!,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          name ?? "",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: colortext!,
          ),
        ),
      ),
    );
  }
}
