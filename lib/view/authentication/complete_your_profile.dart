import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rideshare/res/common/app_arrow_back.dart';
import 'package:rideshare/res/common/app_button.dart';
import 'package:rideshare/res/common/app_email_text_filed.dart';
import 'package:rideshare/res/common/app_name_text_filed.dart';
import 'package:rideshare/res/common/app_outline_button.dart';
import 'package:rideshare/res/constant/app_colors.dart';

class CompleteYourProfile extends StatefulWidget {
  const CompleteYourProfile({Key? key}) : super(key: key);

  @override
  State<CompleteYourProfile> createState() => _CompleteYourProfileState();
}

class _CompleteYourProfileState extends State<CompleteYourProfile> {
  // late List<CameraDescription> _cameras;
  // late CameraController controller;
  //
  // void initState() {
  //   super.initState();
  //   controller = CameraController(_cameras[0], ResolutionPreset.max);
  //   controller.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {});
  //   }).catchError((Object e) {
  //     if (e is CameraException) {
  //       switch (e.code) {
  //         case 'CameraAccessDenied':
  //
  //           // Handle access errors here.
  //           break;
  //         default:
  //           // Handle other errors here.
  //           break;
  //       }
  //     }
  //   });
  //   void dispose() {
  //     controller.dispose();
  //     super.dispose();
  //   }
  //
  //   Widget build(BuildContext context) {
  //     if (!controller.value.isInitialized) {
  //       return Container();
  //     }
  //     return MaterialApp(
  //       home: CameraPreview(controller),
  //     );
  //   }
  // }
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  final List<String> city = [
    "surat",
    "rajkot",
    "ahemdabad",
    "anand",
  ];
  String? _selectedcity;

  final List<String> District = [
    " surat",
    "rajkot",
    "ahemdabad",
  ];
  String? _selectedDistrict;

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
            const AppArrowBack(
              name: "profile",
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 30),
              child: const AppNameTextFiled(),
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
              child: const AppEmailTextFiled(),
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
                      'city',
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
                  value: _selectedDistrict,
                  onChanged: (value) {
                    setState(() {
                      _selectedDistrict = value;
                    });
                  },
                  hint: const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 7),
                    child: Text(
                      'district',
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
                  items: District.map((e) => DropdownMenuItem(
                        value: e,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            e,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      )).toList(),
                  selectedItemBuilder: (BuildContext context) => District.map((e) => Center(
                        child: Text(
                          e,
                          style: const TextStyle(
                            fontSize: 18,
                            color: AppColors.lGrayColor,
                          ),
                        ),
                      )).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppOutlineButton(
                    color: AppColors.darkGreenColor,
                    text: "cancel",
                    width: screenWidth / 2.4,
                    hight: screenHeight / 16,
                    tColor: AppColors.darkGreenColor,
                  ),
                  AppButton(
                    text: "save",
                    width: screenWidth / 2.4,
                    height: screenHeight / 16,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
