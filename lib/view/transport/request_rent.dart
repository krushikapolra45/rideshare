import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';
import 'package:rideshare/view/transport/thank_you.dart';

class RequestRent extends StatefulWidget {
  const RequestRent({Key? key}) : super(key: key);

  @override
  State<RequestRent> createState() => _RequestRentState();
}

class _RequestRentState extends State<RequestRent> {
  TextEditingController dateinput = TextEditingController();
  void initState() {
    dateinput.text = "";
    super.initState();
  }

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
                name: "Request for rent",
              ),
              Container(
                height: screenHeight / 10,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.dlGreenColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
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
                                  fontWeight: FontWeight.w600,
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
                        width: screenWidth / 7,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 40),
              Center(
                child: TextField(
                  controller: dateinput,
                  decoration: InputDecoration(
                    // isDense: true,
                    fillColor: AppColors.lGrayColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Date",
                    hintStyle: const TextStyle(color: AppColors.lGrayColor),
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );

                    if (pickedDate != null) {
                      print(pickedDate);
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate);

                      setState(() {
                        dateinput.text = formattedDate;
                      });
                    } else {
                      print("Date is  selected");
                    }
                  },
                ),
              ),
              SizedBox(height: screenHeight / 50),
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
              SizedBox(height: screenHeight / 50),
              Container(
                height: screenHeight / 15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.dlGreenColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.sKay,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.visa,
                        // height: screenHeight / 10,
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
              Container(
                height: screenHeight / 15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.dlGreenColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.sKay,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.payment,
                        // height: screenHeight / 10,
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
              Container(
                height: screenHeight / 15,
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //   colors: [
                  //     Color(0x161616),
                  //     Color(0xFF161616),
                  //   ],
                  // ),
                  border: Border.all(
                    color: AppColors.dlGreenColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.sKay,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.pPayment,
                        // height: screenHeight / 10,
                        width: screenWidth / 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.pay,
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
              Container(
                height: screenHeight / 15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.dlGreenColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.sKay,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.cash,
                        // height: screenHeight / 10,
                        width: screenWidth / 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.cash,
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
              SizedBox(height: screenHeight / 40),
              AppButton(
                text: "confirm booking",
                width: screenWidth,
                height: screenHeight / 16,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThankYou()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

DateFormat(String s) {}
