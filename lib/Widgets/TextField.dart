import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final TextEditingController? controller;

  final bool? obscuretextvaluel;

  CTextField(
      {super.key, required this.controller, required this.obscuretextvaluel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(.1),
          spreadRadius: 5,
          blurRadius: 6,
          // offset: Offset(0, 2),
        )
      ]),
      child: TextField(
        obscureText: obscuretextvaluel!,
        style: const TextStyle(color: Colors.black),
        controller: controller,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.black, width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1,
                )),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 13.0),
            hintStyle:
                TextStyle(color: Colors.black, fontSize: Dimensions.font14)),
      ),
    );
  }
}
