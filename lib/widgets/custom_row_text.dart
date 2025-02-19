import 'package:flutter/material.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText(
      {super.key,
      this.fontWeight = FontWeight.w700,
      required this.prefixText,
      required this.suffexText,
      this.prefixFontSize = 14,
      this.suffixFontSize = 14,
      this.color = Colors.black});
  final String prefixText, suffexText;
  final FontWeight fontWeight;
  final double prefixFontSize;
  final double suffixFontSize;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            prefixText,
            style: TextStyle(
              fontSize: prefixFontSize,
              color: color,
            ),
          ),
          Text(
            suffexText,
            style: TextStyle(
                fontSize: suffixFontSize, fontWeight: fontWeight, color: color),
          ),
        ],
      ),
    );
  }
}
