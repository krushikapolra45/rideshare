import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_payment_method.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';
import 'package:rideshare/view/dialog/simple_dialog_screen.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                name: "payment",
              ),
              SizedBox(height: screenHeight / 40),
              Container(
                height: screenHeight / 12,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.dlGreenColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.sKay,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.dHedding,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dlGrayColor,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xFFFBC02D),
                                size: 16,
                              ),
                              Text(
                                AppStrings.reviews,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grayColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        AppAssets.carThree,
                        // height: screenHeight / 10,
                        width: screenWidth / 5,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 30),
              const Text(
                AppStrings.charge,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.dlGrayColor,
                ),
              ),
              SizedBox(height: screenHeight / 80),
              const Row(
                children: [
                  Text(
                    AppStrings.houre,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    AppStrings.price,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 90),
              const Row(
                children: [
                  Text(
                    AppStrings.cash,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    AppStrings.priceOff,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: AppColors.dGrayColor,
                thickness: 1,
              ),
              const Row(
                children: [
                  Text(
                    AppStrings.totle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    AppStrings.priceTotle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.dlGrayColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 40),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.paymentText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.dlGrayColor,
                  ),
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
              const AddPaymentMethod(
                name: AppStrings.miracor,
                title: AppStrings.visa,
                image: AppAssets.payment,
              ),
              SizedBox(height: screenHeight / 70),
              const AddPaymentMethod(
                name: AppStrings.miracor,
                title: AppStrings.pay,
                image: AppAssets.pPayment,
              ),
              SizedBox(height: screenHeight / 70),
              const AddPaymentMethod(
                name: AppStrings.miracor,
                title: AppStrings.cash,
                image: AppAssets.cash,
              ),
              SizedBox(height: screenHeight / 20),
              AppButton(
                  width: screenWidth,
                  height: screenHeight / 16,
                  color: AppColors.darkGreenColor,
                  text: "confirm ride",
                  onPress: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialogScreen();
                        });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
