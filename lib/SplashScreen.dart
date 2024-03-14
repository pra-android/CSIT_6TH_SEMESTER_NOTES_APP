import 'dart:io';

import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: Get.context!.height,
        width: Get.context!.width,
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/reading.png",
                height: 500,
                width: 400,
                fit: BoxFit.contain,
              ),
              decoration: BoxDecoration(color: Colors.green),
              height: Get.context!.height / 2,
            ),
            Container(
              height: Get.context!.height / 2,
              width: Get.context!.width,
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "BSC.CSIT 6TH SEM NOTES",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "This app was developed by Prabin Bhattarai in 06/03/2024",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  const Text(
                    "Can be Install on both android and IOS",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Get.off(() => WelcomePage());
                    },
                    child: Container(
                      width: Get.context!.width / 2 + 105,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(32.0)),
                      child: const Center(
                          child: Text(
                        "Continue the app  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      exit(0);
                    },
                    child: Container(
                      width: Get.context!.width / 2 + 105,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(32.0)),
                      child: const Center(
                          child: Text(
                        "⬅️  Exit the app",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(),
                      Text(
                        "● ",
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                      Text(
                        "● ",
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                      Text(
                        "●",
                        style: TextStyle(color: Colors.blue.shade900),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  const Center(
                      child: Text(
                    "Copyright© 2024 Prabin",
                    style: TextStyle(color: Colors.black, fontSize: 11),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
