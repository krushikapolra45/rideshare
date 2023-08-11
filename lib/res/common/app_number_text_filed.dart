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
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Expanded(
        child: TextFormField(
          validator: (value) {
            if (!RegExp(r"^(?:[+0]9)?[0-9]{10,12}$").hasMatch(value!)) {
              return "Please enter valid number";
            }
            return null;
          },
          decoration: InputDecoration(
            // contentPadding: const EdgeInsets.all(20),
            isDense: false,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.grayColor, width: 1),
            ),
            hintText: "Your mobile number",
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

            hintStyle: TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
