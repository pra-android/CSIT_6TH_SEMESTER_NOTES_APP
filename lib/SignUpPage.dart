import 'package:csit_six_semester_notesapp/AuthServices.dart';
import 'package:csit_six_semester_notesapp/NotificationServices.dart';
import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomTextField.dart';
import 'package:csit_six_semester_notesapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final authservices = AuthServices();
  final usercontroller = TextEditingController();

  final userpassword = TextEditingController();
  final confirmpassword = TextEditingController();

  final useremail = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool obscurevalue = true;
  bool obscurevalue2 = true;

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
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        height: Get.context!.height,
        child: Form(
          key: formkey,
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
                      "Sign Up",
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
                      "Create an account.It's free",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )),
                  ),
                ),

                SizedBox(height: Dimensions.height45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 22.0),
                      child: Text(
                        "Username:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 6.0),
                  child: CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return 'Please enter a valid  username';
                      } else {
                        return null;
                      }
                    },
                    obscuretextvaluel: false,
                    controller: usercontroller,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 22.0),
                      child: Text(
                        "Password:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 6.0),
                  child: CustomTextField(
                    obscuretextvaluel: obscurevalue,
                    icon: Icons.remove_red_eye,
                    suffix: () {
                      obscurevalue = !obscurevalue;
                      setState(() {});
                    },
                    validator: (val) {
                      if (val!.length <= 3) {
                        return 'Please enter valid password';
                      } else {
                        return null;
                      }
                    },
                    controller: userpassword,
                  ),
                ),
                //confirm password
                SizedBox(
                  height: Dimensions.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 22.0),
                      child: Text(
                        "Confirm Password:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 6.0),
                  child: CustomTextField(
                    obscuretextvaluel: obscurevalue2,
                    icon: Icons.remove_red_eye,
                    suffix: () {
                      obscurevalue2 = !obscurevalue2;
                      setState(() {});
                    },
                    validator: (val) {
                      if (val! != userpassword.text || val.isEmpty) {
                        return 'Password does not match';
                      } else {
                        return null;
                      }
                    },
                    controller: confirmpassword,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
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
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 6.0),
                  child: CustomTextField(
                    validator: (val) {
                      if (GetUtils.isEmail(val!) == false) {
                        return 'Please Enter Valid Email address';
                      } else {
                        return null;
                      }
                    },
                    obscuretextvaluel: false,
                    controller: useremail,
                  ),
                ),
                const SizedBox(height: 50),
                //Sign Up Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: OutlinedButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        final login = await authservices.signuppage(
                            usercontroller.text,
                            userpassword.text,
                            useremail.text);

                        print(login);

                        NotificationService.showNotification(
                            title: "Important Alert!",
                            body: "Sign Up Successfully");

                        Get.off(() =>
                            HomePage(usercontroller: usercontroller.text));
                      } else {}

                      print(
                          "Name,Password,Email:${usercontroller.text + userpassword.text + useremail.text}");
                    },
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
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
