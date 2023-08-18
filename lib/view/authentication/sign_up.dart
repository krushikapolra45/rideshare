import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_email_text_filed.dart';
import 'package:rideshare/res/common/app_name_text_filed.dart';
import 'package:rideshare/res/common/app_outline_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';
import 'package:rideshare/view/authentication/verify_otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  bool checkvalue = false;

  final List<String> gender = [
    "mail",
    "femail",
    "other",
  ];
  String? _selectedGender;
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
                  child: const AppNameTextFiled(),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 30),
                  child: const AppEmailTextFiled(),
                ),
                Form(
                  key: formKey,
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth / 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: const TextStyle(
                            color: AppColors.black,
                          ),
                          initialValue: number,
                          textFieldController: controller,
                          formatInput: true,
                          keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                          inputBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 30),
                  child: Container(
                    width: screenWidth / 1.0,
                    height: screenHeight / 14,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.lGrayColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButton<String>(
                      value: _selectedGender,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 7),
                        child: Text(
                          'Gender',
                          style: TextStyle(color: AppColors.lGrayColor),
                        ),
                      ),
                      underline: Container(),
                      dropdownColor: AppColors.whiteColor,
                      icon: const Padding(
                        padding: EdgeInsets.only(right: 8.0, top: 7),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: AppColors.darkGrayColor,
                        ),
                      ),
                      isExpanded: true,
                      items: gender
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
                          .toList(),
                      selectedItemBuilder: (BuildContext context) => gender
                          .map((e) => Center(
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: AppColors.lGrayColor,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
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
                      activeColor: AppColors.dGreenColor,
                      onChanged: (value) {
                        debugPrint("value---> $value");
                        setState(() {
                          checkvalue = value!;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                        maxLines: 2,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "By signing up. you agree to the",
                              style: TextStyle(
                                color: AppColors.grayColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(
                                color: AppColors.dlGreenColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "and",
                              style: TextStyle(
                                color: AppColors.grayColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "Privacy policy.",
                              style: TextStyle(
                                color: AppColors.dlGreenColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 40),
                AppButton(
                  text: "Sign Up",
                  width: screenWidth / 1.0,
                  height: screenHeight / 16,
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      debugPrint("is valid");

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const VerifyOtp()),
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
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
