import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color color;
  final String? googleFonts;
  double? fontsize;
  BigText(
      {required this.text,
      required this.color,
      this.googleFonts,
      required this.fontsize});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: googleFonts,
          fontStyle: FontStyle.normal,
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: fontsize),
    );
  }
}
