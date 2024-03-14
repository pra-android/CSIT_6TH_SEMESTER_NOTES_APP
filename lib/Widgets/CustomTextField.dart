import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;

  final bool? obscuretextvaluel;
  final String? Function(String?) validator;
  final IconData? icon;
  final VoidCallback? suffix;

  const CustomTextField(
      {super.key,
      this.controller,
      required this.obscuretextvaluel,
      required this.validator,
      this.suffix,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: TextFormField(
        obscureText: obscuretextvaluel!,
        style: const TextStyle(color: Colors.black),
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: suffix,
                icon: Icon(
                  icon,
                  color: Colors.grey.shade600,
                )),
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
