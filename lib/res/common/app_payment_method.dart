import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AddPaymentMethod extends StatelessWidget {
  final String? image;
  final String? name;
  final String? title;
  const AddPaymentMethod({Key? key, this.image, this.name, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Container(
      height: screenHeight / 15,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.dlGreenColor.withOpacity(0.40),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
        color: AppColors.sKay.withOpacity(0.40),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            Image.asset(
              image ?? "",
              width: screenWidth / 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "",
                    // AppStrings.visa,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.dlGrayColor.withOpacity(0.40),
                    ),
                  ),
                  Text(
                    name ?? "",
                    // AppStrings.miracor,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayColor.withOpacity(0.40),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
