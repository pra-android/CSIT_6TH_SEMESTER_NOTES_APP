import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double? radius;
  final Color? background;
  final FaIcon listoficons;

  CustomCircleAvatar(
      {required this.radius,
      required this.background,
      required this.listoficons});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: background,
      child: listoficons,
    );
  }
}
