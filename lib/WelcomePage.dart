import 'package:csit_six_semester_notesapp/LoginPage.dart';
import 'package:csit_six_semester_notesapp/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/Dimensions.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.height70,
          ),
          const Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            ),
          ),
          SizedBox(
            height: Dimensions.height30,
          ),
          const Text(
              "This notes application provides extra ordinary\n notes .So do follow for further updates."),
          SizedBox(
            height: Dimensions.height45,
          ),
          Image.asset(
            "assets/welcome.png",
            height: 280,
            width: 260,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: Dimensions.height70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        32.0), // Optional: You can add border-radius
                  ),
                  side: BorderSide(color: Colors.black),
                  fixedSize: Size(
                    Get.context!.width,
                    54,
                  ),
                ),
                onPressed: () {
                  Get.to(() => LoginPage());
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        32.0), // Optional: You can add border-radius
                  ),
                  backgroundColor: Colors.blue.shade400,
                  side: BorderSide(color: Colors.blue.shade500),
                  fixedSize: Size(
                    Get.context!.width,
                    55,
                  ),
                ),
                onPressed: () {
                  Get.to(() => SignUpPage());
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
        ],
      ),
    );
  }
}
