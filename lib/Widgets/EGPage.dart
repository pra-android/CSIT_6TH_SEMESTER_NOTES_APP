import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/BigText.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomContainerButton.dart';
import 'package:csit_six_semester_notesapp/Widgets/EGOVDisplay.dart';
import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EGPage extends StatelessWidget {
  const EGPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: BigText(text: "E-Governance", color: Colors.white, fontsize: 20),
      ),
      body: ListView.builder(
          itemCount: listofEGchapters.length,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => EGOVDisplay(index: index));
                  },
                  child: CustomContainerButton(
                      height: 40,
                      width: Get.context!.width / 2,
                      containercolor: Colors.pink,
                      fontsize: Dimensions.font12,
                      text: listofEGchapters[index],
                      textcolor: Colors.white),
                ),
              ))),
    );
  }
}
