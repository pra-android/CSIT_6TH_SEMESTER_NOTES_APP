import 'package:csit_six_semester_notesapp/AuthServices.dart';
import 'package:csit_six_semester_notesapp/NotificationServices.dart';
import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/TextField.dart';
import 'package:csit_six_semester_notesapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernamecontroller = TextEditingController();

  final userpasswordcontroller = TextEditingController();

  final useremail = TextEditingController();

  final authservices = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: Container(
        height: Get.context!.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Dimensions.height45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 45,
                  width: Get.context!.width,
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 45,
                  width: Get.context!.width,
                  child: const Center(
                      child: Text(
                    "Login to your account",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  )),
                ),
              ),

              SizedBox(height: Dimensions.height30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22.0),
                    child: Text(
                      "Username:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
                child: CTextField(
                  obscuretextvaluel: false,
                  controller: usernamecontroller,
                ),
              ),
              SizedBox(height: Dimensions.height15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22.0),
                    child: Text(
                      "Password:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
                child: CTextField(
                  obscuretextvaluel: true,
                  controller: userpasswordcontroller,
                ),
              ),
              SizedBox(
                height: Dimensions.height15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22.0),
                    child: Text(
                      "Email:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
                child: CTextField(
                  obscuretextvaluel: false,
                  controller: useremail,
                ),
              ),
              const SizedBox(height: 50),
              //Login  Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: OutlinedButton(
                  onPressed: () async {
                    print("Pressed on Login Button");
                    final islogin = await authservices.login(
                      usernamecontroller.text,
                      userpasswordcontroller.text,
                      useremail.text,
                    );

                    print(islogin);
                    if (islogin == true) {
                      NotificationService.showNotification(
                          title: "Important Alert!",
                          body: "Login Successfully");
                      Get.off(() =>
                          HomePage(usercontroller: usernamecontroller.text));
                    } else {
                      NotificationService.showNotification(
                          title: "Error", body: "Credentials does not match");
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    backgroundColor: Colors.blue.shade400,
                    side: BorderSide(color: Colors.blue.shade500),
                    fixedSize: Size(
                      Get.context!.width,
                      55,
                    ),
                  ),
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Image.asset(
                "assets/login.png",
                height: 230,
                width: 200,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
      ),
    );
  }
}
