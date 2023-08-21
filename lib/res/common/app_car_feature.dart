import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppCarFeature extends StatelessWidget {
  final String? text;
  final String? name;
  const AppCarFeature({Key? key, this.text, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Container(
      height: screenHeight / 20,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.dlGreenColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
        color: AppColors.sKay,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              text ?? "",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.lGray,
              ),
            ),
            Spacer(),
            Text(
              name ?? "",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.lGray,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
