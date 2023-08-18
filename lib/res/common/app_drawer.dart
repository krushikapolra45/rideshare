import 'package:flutter/material.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class AppDrawer extends StatelessWidget {
  final String? image;
  final String? text;
  const AppDrawer({Key? key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                image ?? "",
                height: 15,
                width: 15,
              ),
              Text(
                text ?? "",
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.darkGrayColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColors.dGrayColor,
          thickness: 1,
          // indent: double.infinity,
        ),
      ],
    );
  }
}
