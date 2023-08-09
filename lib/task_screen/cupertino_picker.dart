import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPicker extends StatefulWidget {
  const CupertinoPicker({Key? key}) : super(key: key);

  @override
  State<CupertinoPicker> createState() => _CupertinoPickerState();
}

class _CupertinoPickerState extends State<CupertinoPicker> {
  Duration initialTimer = const Duration();
  var time;
  @override
  Widget build(BuildContext context) {
    return CupertinoTimerPicker(
      mode: CupertinoTimerPickerMode.hms,
      minuteInterval: 1,
      secondInterval: 1,
      backgroundColor: Colors.white,
      initialTimerDuration: initialTimer,
      onTimerDurationChanged: (Duration changeTimer) {
        setState(() {
          initialTimer = changeTimer;
          time = '${changeTimer.inHours} hrs ${changeTimer.inMinutes % 60} mins ${changeTimer.inSeconds % 60} secs';
        });
      },
    );
  }
}
