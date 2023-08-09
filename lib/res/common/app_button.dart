import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final double? radius;
  final double? width;
  final double? hight;
  final void Function()? onPress;

  const AppButton({
    Key? key,
    this.radius,
    this.width,
    this.hight,
    this.onPress,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
            radius ?? 8,
          ))),
          fixedSize: MaterialStatePropertyAll(
            Size(width!, hight!),
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
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
