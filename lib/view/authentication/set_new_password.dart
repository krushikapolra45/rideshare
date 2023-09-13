import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({Key? key}) : super(key: key);

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          children: [
            const AppArrowBack(),
            const Text(
              AppStrings.password,
              style: TextStyle(
                color: AppColors.darkGrayColor,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              AppStrings.sPassword,
              style: TextStyle(
                color: AppColors.lightGrayColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 30),
              child: TextFormField(
                validator: (value) {
                  if (RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value!)) {
                    return "Please enter password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: obscureText
                          ? Icon(
                              Icons.visibility_off,
                              color: AppColors.lGrayColor,
                              size: 25,
                            )
                          : Icon(
                              Icons.visibility,
                              color: AppColors.lGrayColor,
                              size: 25,
                            )),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.grayColor,
                    ),
                  ),
                  hintText: "enter your new password",
                  hintStyle: TextStyle(
                    color: AppColors.lGrayColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                obscureText: obscureText,
                onTap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 30),
              child: TextFormField(
                validator: (value) {
                  if (RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value!)) {
                    return "Please enter confirm password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: obscureText
                          ? Icon(
                              Icons.visibility_off,
                              color: AppColors.lGrayColor,
                              size: 25,
                            )
                          : Icon(
                              Icons.visibility,
                              color: AppColors.lGrayColor,
                              size: 25,
                            )),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: AppColors.grayColor),
                  ),
                  hintText: "confirm password",
                  hintStyle: TextStyle(
                    color: AppColors.lGrayColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                obscureText: obscureText,
                onTap: () {},
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.lastLine,
                style: TextStyle(
                  color: AppColors.ldGrayColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            AppButton(
              text: "Register",
              color: AppColors.darkGreenColor,
              width: screenWidth / 1.0,
              height: screenHeight / 16,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
