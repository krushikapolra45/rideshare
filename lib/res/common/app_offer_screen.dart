import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppOfferScreen extends StatelessWidget {
  final String? name;
  final String? persent;
  const AppOfferScreen({super.key, this.name, this.persent});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: screenHeight / 14,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.dlGreenColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? "",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.orange,
                    ),
                  ),
                  Text(
                    persent ?? "",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grayColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              AppButton(
                width: screenWidth / 3.5,
                height: screenHeight / 50,
                text: "collect",
                color: AppColors.darkGreenColor,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
