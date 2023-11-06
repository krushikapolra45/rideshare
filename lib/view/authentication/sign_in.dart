import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_email_text_filed.dart';
import 'package:rideshare/res/common/app_outline_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';
import 'package:rideshare/view/authentication/send_verification.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var obscureText = true;
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
            Padding(
              padding: EdgeInsets.all(screenWidth / 22),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.singHadding,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrayColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 30),
              child: AppEmailTextFiled(),
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
            SizedBox(height: screenHeight / 40),
            AppButton(
              text: "Sign Up",
              color: AppColors.darkGreenColor,
              width: screenWidth / 1.0,
              height: screenHeight / 16,
              onPress: () {
                if (formKey.currentState!.validate()) {
                  debugPrint("is valid");

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SendVerification()),
                  );
                } else {
                  debugPrint("is not valid");
                }
              },
            ),
            SizedBox(height: screenHeight / 70),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    indent: 23,
                    endIndent: 5,
                    color: AppColors.grayColor,
                  ),
                ),
                Text("or",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.grayColor,
                    )),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    endIndent: 23,
                    indent: 5,
                    color: AppColors.grayColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            AppOutlineButton(
              tColor: AppColors.dlGrayColor,
              color: AppColors.lGrayColor,
              width: screenWidth / 1.0,
              hight: screenHeight / 17,
              text: AppStrings.gmail,
              image: AppAssets.gmail,
            ),
            AppOutlineButton(
              tColor: AppColors.dlGrayColor,
              color: AppColors.lGrayColor,
              width: screenWidth / 1.0,
              hight: screenHeight / 17,
              text: AppStrings.faceBook,
              image: AppAssets.fb,
            ),
            AppOutlineButton(
              tColor: AppColors.dlGrayColor,
              color: AppColors.lGrayColor,
              width: screenWidth / 1,
              hight: screenHeight / 17,
              text: AppStrings.apple,
              image: AppAssets.apple,
            ),
            Padding(
              padding: EdgeInsets.all(screenHeight / 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: const TextSpan(
                    text: "Already have an account?  ",
                    style: TextStyle(
                      color: AppColors.dlGrayColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                  RichText(
                      text: const TextSpan(
                    text: "Sign in ",
                    style: TextStyle(
                      color: AppColors.darkGreenColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
