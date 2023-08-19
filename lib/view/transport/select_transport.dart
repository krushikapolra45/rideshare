import 'package:flutter/material.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class SelectTransport extends StatefulWidget {
  const SelectTransport({Key? key}) : super(key: key);

  @override
  State<SelectTransport> createState() => _SelectTransportState();
}

class _SelectTransportState extends State<SelectTransport> {
  List<Map<String, dynamic>> arrayList = [
    {
      "itemname": AppStrings.car,
      "image": AppAssets.car,
    },
    {
      "itemname": AppStrings.bike,
      "image": AppAssets.bike,
    },
    {
      "itemname": AppStrings.cycle,
      "image": AppAssets.cycle,
    },
    {
      "itemname": AppStrings.taxi,
      "image": AppAssets.taxi,
    }
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              AppArrowBack(
                name: "select transport",
              ),
              SizedBox(height: screenHeight / 40),
              Text(
                AppStrings.heading,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.dlGrayColor,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: arrayList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    // mainAxisExtent: 210,
                  ),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.dlGreenColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.sKay,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            arrayList[index]["image"],
                            height: screenHeight / 10,
                            width: screenWidth / 5,
                          ),
                          Text(
                            arrayList[index]["itemname"],
                            style: const TextStyle(
                              color: AppColors.dlGrayColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
