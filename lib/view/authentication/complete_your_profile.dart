import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CompleteYourProfile extends StatefulWidget {
  const CompleteYourProfile({Key? key}) : super(key: key);

  @override
  State<CompleteYourProfile> createState() => _CompleteYourProfileState();
}

class _CompleteYourProfileState extends State<CompleteYourProfile> {
  late List<CameraDescription> _cameras;
  late CameraController controller;

  void initState() {
    super.initState();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':

            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    Widget build(BuildContext context) {
      if (!controller.value.isInitialized) {
        return Container();
      }
      return MaterialApp(
        home: CameraPreview(controller),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
