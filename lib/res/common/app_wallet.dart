import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppWallet extends StatelessWidget {
  final String? images;
  final String? wText;
  final String? tText;
  final String? pText;

  const AppWallet({super.key, this.images, this.wText, this.tText, this.pText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight / 14,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.dlGreenColor.withOpacity(0.40),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Image.asset(
                images ?? "",
                width: screenWidth / 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      wText ?? "",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.pblack,
                      ),
                    ),
                    Text(
                      tText ?? "",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.dlGrayColor,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                pText ?? "",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.pblack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
