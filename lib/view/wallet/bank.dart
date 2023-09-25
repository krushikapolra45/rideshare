import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_payment_method.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
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
                      'select payment method',
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
              SizedBox(height: screenHeight / 40),
              TextField(
                decoration: InputDecoration(
                  focusColor: AppColors.lGrayColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: false,
                  suffixIcon: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text(
                          "account number",
                          style: TextStyle(
                            color: AppColors.lGrayColor,
                            fontSize: 16,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppButton(
                  width: screenWidth,
                  height: screenHeight / 16,
                  text: "confirm",
                  color: AppColors.darkGreenColor.withOpacity(0.40),
                  onPress: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            elevation: 0,
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CloseButton(
                                  onPressed: () {},
                                ),
                                Image.asset(
                                  AppAssets.tq,
                                  width: screenWidth / 2,
                                  height: screenHeight / 8,
                                ),
                                SizedBox(height: screenHeight / 60),
                                const Text(
                                  AppStrings.addsuc,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.dlGrayColor,
                                  ),
                                ),
                                const Text(
                                  textAlign: TextAlign.center,
                                  AppStrings.addmoney,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.lGray,
                                  ),
                                ),
                                SizedBox(height: screenHeight / 40),
                                Text(
                                  textAlign: TextAlign.center,
                                  AppStrings.addamount,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.dlGrayColor,
                                  ),
                                ),
                                SizedBox(height: screenHeight / 60),
                                Text(
                                  textAlign: TextAlign.center,
                                  AppStrings.dprice,
                                  style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.dlGrayColor,
                                  ),
                                ),
                                AppButton(
                                  width: screenWidth,
                                  height: screenHeight / 16,
                                  color: AppColors.darkGreenColor,
                                  text: "Back Home",
                                  onPress: () {},
                                ),
                              ],
                            ),
                          );
                        });
                  },
                ),
              ),
              SizedBox(height: screenHeight / 30),
              Container(
                height: screenHeight / 15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.dlGreenColor.withOpacity(0.40),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.sKay.withOpacity(0.40),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.visa,
                        width: screenWidth / 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.visa,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.dlGrayColor.withOpacity(0.40),
                              ),
                            ),
                            Text(
                              AppStrings.miracor,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grayColor.withOpacity(0.40),
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
            ],
          ),
        ),
      ),
    );
  }
}
