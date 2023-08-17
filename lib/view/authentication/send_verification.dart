import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_email_text_filed.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';
import 'package:rideshare/view/authentication/phone_verify_otp.dart';

class SendVerification extends StatefulWidget {
  const SendVerification({Key? key}) : super(key: key);

  @override
  State<SendVerification> createState() => _SendVerificationState();
}

class _SendVerificationState extends State<SendVerification> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          children: [
            AppArrowBack(),
            Padding(
              padding: EdgeInsets.all(screenWidth / 22),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.number,
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
            Spacer(),
            AppButton(
              text: "send otp",
              width: screenWidth / 1.0,
              height: screenHeight / 16,
              onPress: () {
                if (formKey.currentState!.validate()) {
                  debugPrint("is valid");

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PhoneVerifyOtp()),
                  );
                } else {
                  debugPrint("is not valid");
                }
              },
            ),
            SizedBox(height: screenHeight / 40),
          ],
        ),
      ),
    );
  }
}
