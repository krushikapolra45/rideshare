import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDataPicker extends StatefulWidget {
  const CupertinoDataPicker({Key? key}) : super(key: key);

  @override
  State<CupertinoDataPicker> createState() => _CupertinoDataPickerState();
}

class _CupertinoDataPickerState extends State<CupertinoDataPicker> {
  DateTime dateTime = DateTime(3000, 2, 1, 10, 20);
  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      backgroundColor: Colors.white,
      use24hFormat: true,
      mode: CupertinoDatePickerMode.date,
      initialDateTime: dateTime,
      onDateTimeChanged: (DateTime newTime) {
        setState(() => dateTime = newTime);
      },
    );
  }
}
