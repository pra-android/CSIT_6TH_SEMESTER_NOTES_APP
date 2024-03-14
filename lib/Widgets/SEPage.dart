import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/BigText.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomContainerButton.dart';
import 'package:csit_six_semester_notesapp/Widgets/SEDisplay.dart';
import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SEPage extends StatelessWidget {
  const SEPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: BigText(
            text: "Software Engineering", color: Colors.white, fontsize: 18),
      ),
      body: ListView.builder(
          itemCount: listofSEchapters.length,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => SEDisplay(index: index));
                  },
                  child: CustomContainerButton(
                      height: 40,
                      width: Get.context!.width / 2,
                      containercolor: Colors.deepOrange,
                      fontsize: Dimensions.font12,
                      text: listofSEchapters[index],
                      textcolor: Colors.white),
                ),
              ))),
    );
  }
}
