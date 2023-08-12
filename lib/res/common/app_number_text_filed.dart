import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppNumberTextFiled extends StatelessWidget {
  const AppNumberTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return TextFormField(
      validator: (value) {
        if (!RegExp(r"^(?:[+0]9)?[0-9]{10,12}$").hasMatch(value!)) {
          return "Please enter valid number";
        }
        return null;
      },
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.grayColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColors.grayColor),
        ),
        hintText: "Your mobile number",
        hintStyle: const TextStyle(
          color: Color(0xFF9E9E9E),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth / 30),
              child: Image.asset(
                AppAssets.country,
                height: screenHeight / 50,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
            ),
            Container(
              height: screenHeight / 20,
              width: screenWidth / 130,
              color: AppColors.lGrayColor,
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
