import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/BigText.dart';
import 'package:csit_six_semester_notesapp/Widgets/CDCDisplay.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomContainerButton.dart';
import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CDCPage extends StatelessWidget {
  const CDCPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: BigText(
            text: "Compiler Design and Construction",
            color: Colors.white,
            fontsize: 16),
      ),
      body: ListView.builder(
          itemCount: listofcdcchapters.length,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => CDCDisplay(index: index));
                  },
                  child: CustomContainerButton(
                      height: 40,
                      width: Get.context!.width / 2,
                      containercolor: Colors.red,
                      fontsize: Dimensions.font12,
                      text: listofcdcchapters[index],
                      textcolor: Colors.white),
                ),
              ))),
    );
  }
}
