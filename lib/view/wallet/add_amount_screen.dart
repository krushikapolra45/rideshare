import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/payment_method.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class AddAmountScreen extends StatefulWidget {
  const AddAmountScreen({super.key});

  @override
  State<AddAmountScreen> createState() => _AddAmountScreenState();
}

class _AddAmountScreenState extends State<AddAmountScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: devicePadding,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppArrowBack(
                name: "amount",
              ),
              Container(
                height: screenHeight / 15,
                width: screenWidth / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.grayColor,
                    width: 1,
                  ),
                ),
                child: Text(
                  AppStrings.textFild,
                  style: TextStyle(
                    color: AppColors.lGrayColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 50),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  AppStrings.addPayment,
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth / 28,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 30),
              Text(
                AppStrings.paymentMethod,
                style: TextStyle(
                  color: AppColors.darkGrayColor,
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 23,
                ),
              ),
              SizedBox(height: screenHeight / 30),
              Container(
                height: screenHeight / 15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.dlGreenColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.sKay,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.visa,
                        width: screenWidth / 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.visa,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.dlGrayColor,
                              ),
                            ),
                            Text(
                              AppStrings.miracor,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grayColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 70),
              const PaymentMethod(
                name: AppStrings.miracor,
                title: AppStrings.visa,
                image: AppAssets.payment,
              ),
              SizedBox(height: screenHeight / 70),
              const PaymentMethod(
                name: AppStrings.miracor,
                title: AppStrings.pay,
                image: AppAssets.pPayment,
              ),
              SizedBox(height: screenHeight / 70),
              const PaymentMethod(
                name: AppStrings.miracor,
                title: AppStrings.cash,
                image: AppAssets.cash,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppButton(
                    width: screenWidth,
                    height: screenHeight / 16,
                    color: AppColors.darkGreenColor,
                    text: "confirm",
                    onPress: () {
                      // showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return SimpleDialogScreen();
                      //     });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
