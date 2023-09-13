import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';
import 'package:rideshare/view/authentication/set_new_password.dart';

class PhoneVerifyOtp extends StatefulWidget {
  const PhoneVerifyOtp({Key? key}) : super(key: key);

  @override
  State<PhoneVerifyOtp> createState() => _PhoneVerifyOtpState();
}

class _PhoneVerifyOtpState extends State<PhoneVerifyOtp> {
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

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
              AppStrings.title,
              style: TextStyle(
                color: AppColors.darkGrayColor,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              AppStrings.otp,
              style: TextStyle(
                color: AppColors.lightGrayColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        // vertical: 0,
                        horizontal: 40,
                      ),
                      child: PinCodeTextField(
                        appContext: context,
                        enablePinAutofill: true,
                        length: 5,
                        obscureText: true,
                        obscuringCharacter: '*',
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 2) {
                            return "I'm from validator";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderWidth: 1,
                          borderRadius: BorderRadius.circular(8),
                          fieldHeight: 48,
                          fieldWidth: 50,
                          selectedColor: AppColors.grayColor,
                          inactiveColor: AppColors.grayColor,
                          activeColor: AppColors.grayColor,
                          inactiveFillColor: Colors.transparent,
                          selectedFillColor: Colors.transparent,
                          activeFillColor: Colors.transparent,
                        ),
                        cursorColor: Colors.black,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        keyboardType: TextInputType.number,
                        onCompleted: (v) {
                          debugPrint("Completed");
                        },
                        onChanged: (value) {
                          debugPrint(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          debugPrint("Allowing to paste $text");

                          return true;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      hasError ? "*Please fill up all the cells properly" : "",
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: const TextSpan(
                        text: "Didn’t receive code?",
                        style: TextStyle(
                          color: AppColors.dlGrayColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                      RichText(
                          text: const TextSpan(
                        text: " Resend again",
                        style: TextStyle(
                          color: AppColors.darkGreenColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                    ],
                  ),
                  SizedBox(height: screenHeight / 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: AppButton(
                      text: " Verify",
                      color: AppColors.darkGreenColor,
                      width: screenWidth / 1.0,
                      height: screenHeight / 16,
                      onPress: () {
                        formKey.currentState!.validate();

                        if (currentText.length != 2 || currentText != "12") {
                          errorController!.add(ErrorAnimationType.shake);
                          setState(() => hasError = true);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SetNewPassword(),
                            ),
                          );
                        } else {
                          setState(
                            () {
                              hasError = false;
                              snackBar("OTP Verified!!");
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
