import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppCarDetails extends StatelessWidget {
  final String? text;
  final String? name;
  final String? image;
  const AppCarDetails({Key? key, this.text, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Container(
      height: screenHeight / 10,
      width: screenWidth / 5,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.dlGreenColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        color: AppColors.sKay,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image ?? "",
            height: screenHeight / 30,
            width: screenWidth / 30,
          ),
          Text(
            text ?? "",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.lGray,
            ),
          ),
          Text(
            name ?? "",
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w500,
              color: AppColors.lGray,
            ),
          ),
        ],
      ),
    );
  }
}
