import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final double? radius;
  final double? width;
  final double? height;
  final void Function()? onPress;

  const AppButton({
    Key? key,
    this.radius,
    this.width,
    this.onPress,
    this.text,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          radius ?? 8,
        ))),
        fixedSize: MaterialStatePropertyAll(
          Size(width!, height!),
        ),
      ),
      onPressed: onPress ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text ?? "",
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
