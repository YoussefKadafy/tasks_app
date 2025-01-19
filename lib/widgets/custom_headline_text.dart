import 'package:flutter/material.dart';

class CustomHeadlineText extends StatelessWidget {
  const CustomHeadlineText(
      {super.key,
      required this.text,
      this.fontSize = 22,
      this.fontWeight = FontWeight.w700});
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
