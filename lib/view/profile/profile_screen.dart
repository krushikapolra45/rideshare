import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rideshare/res/common/app_drawer_screen.dart';
import 'package:rideshare/res/common/app_email_text_filed.dart';
import 'package:rideshare/res/common/app_outline_button.dart';
import 'package:rideshare/res/constant/app_assets.dart';
import 'package:rideshare/res/constant/app_colors.dart';
import 'package:rideshare/res/constant/app_strings.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
  final List<String> city = [
    "surat",
    "rajkot",
    "ahemdabad",
    "anand",
  ];
  String? _selectedcity;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const AppDrawerScreen(),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight / 21,
                    width: screenWidth / 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.dlGreenColor.withOpacity(0.50),
                    ),
                    child: IconButton(
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                      icon: const Icon(Icons.menu, size: 25),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 30),
            Image.asset(
              AppAssets.drawerP,
              width: screenWidth / 3,
              height: 90,
            ),
            SizedBox(height: screenHeight / 40),
            const Text(
              AppStrings.dName,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 28,
                color: AppColors.dlGrayColor,
              ),
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
                  value: _selectedcity,
                  onChanged: (value) {
                    setState(() {
                      _selectedcity = value;
                    });
                  },
                  hint: const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 7),
                    child: Text(
                      'address',
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
                  items: city
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
                  selectedItemBuilder: (BuildContext context) => city
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
            AppOutlineButton(
              color: AppColors.darkGreenColor,
              text: "log out",
              width: screenWidth / 1.1,
              hight: screenHeight / 16,
              tColor: AppColors.darkGreenColor,
            ),
          ],
        ),
      ),
    );
  }
}
