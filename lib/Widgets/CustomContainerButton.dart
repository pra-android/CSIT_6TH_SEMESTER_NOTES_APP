import 'package:csit_six_semester_notesapp/Widgets/BigText.dart';
import 'package:flutter/widgets.dart';

class CustomContainerButton extends StatelessWidget {
  final double height;
  final double width;
  final Color containercolor;
  final String text;
  final Color textcolor;
  final String? googlefonts;
  final double fontsize;

  CustomContainerButton(
      {required this.height,
      required this.width,
      required this.containercolor,
      required this.fontsize,
      this.googlefonts,
      required this.text,
      required this.textcolor});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: containercolor,
      height: height,
      width: width,
      child: Center(
        child: BigText(
            text: text,
            color: textcolor,
            googleFonts: googlefonts,
            fontsize: fontsize),
      ),
    );
  }
}
