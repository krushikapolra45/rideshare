import 'package:flutter/material.dart';

class AppOutlineButton extends StatelessWidget {
  final double? hight;
  final double? width;
  final Color? color;
  final Color? tColor;
  final String? text;
  final String? image;

  const AppOutlineButton({Key? key, this.hight, this.width, this.color, this.text, this.tColor, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: EdgeInsets.all(screenWidth / 40),
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          fixedSize: MaterialStatePropertyAll(
            Size(width!, hight!),
          ),
          side: MaterialStatePropertyAll(BorderSide(
            color: color!,
            width: 1,
          )),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              Image.asset(
                image!,
                height: screenHeight / 50,
              ),
            SizedBox(width: screenWidth / 50),
            Text(
              text ?? "",
              style: TextStyle(
                fontSize: 16,
                color: tColor!,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
