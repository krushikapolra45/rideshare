import 'package:flutter/material.dart';
import 'package:gsform/gs_form/model/data_model/spinner_data_model.dart';
import 'package:gsform/gs_form/widget/field.dart';
import 'package:gsform/gs_form/widget/form.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_email_text_filed.dart';
import 'package:rideshare/res/common/app_name_text_filed.dart';
import 'package:rideshare/res/common/app_number_text_filed.dart';
import 'package:rideshare/res/common/app_outline_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late GSForm form;
  bool checkvalue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                const AppArrowBack(),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 22),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Sign up with your email or\nphone number",
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
                  child: const AppNameTextFiled(),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 30),
                  child: const AppEmailTextFiled(),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 30),
                  child: const AppNumberTextFiled(),
                ),
                GSField.spinner(
                  tag: 'customer_type',
                  required: false,
                  weight: 6,
                  title: 'Gender',
                  onChange: (model) {},
                  items: [
                    SpinnerDataModel(
                      name: 'man',
                      id: 1,
                    ),
                    SpinnerDataModel(
                      name: 'woman',
                      id: 2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkvalue,
                      shape: const CircleBorder(
                          side: BorderSide(
                        color: AppColors.dGreenColor,
                        width: 1,
                      )),
                      // checkColor: AppColors.dGreenColor,
                      // hoverColor: AppColors.dGreenColor,
                      activeColor: AppColors.dGreenColor,
                      onChanged: (value) {
                        debugPrint("value---> $value");
                        setState(() {
                          checkvalue = value!;
                        });
                      },
                    ),
                    RichText(
                        text: const TextSpan(
                      text: "By signing up. you agree to the ",
                      style: TextStyle(
                        color: AppColors.grayColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                    RichText(
                        text: const TextSpan(
                      text: "Terms of service ",
                      style: TextStyle(
                        color: AppColors.dlGreenColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                    RichText(
                        text: const TextSpan(
                      text: "and",
                      style: TextStyle(
                        color: AppColors.grayColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: const TextSpan(
                    text: "Privacy policy.",
                    style: TextStyle(
                      color: AppColors.dlGreenColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
                SizedBox(height: screenHeight / 40),
                AppButton(
                  text: "Sign Up",
                  width: screenWidth / 1.0,
                  hight: screenHeight / 16,
                  onPress: () {},
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
          ],
        ),
      ),
    );
  }
}
