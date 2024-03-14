import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomContainerButton.dart';
import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TWPage extends StatelessWidget {
  const TWPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Technical Writing",
            style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
      body: ListView.builder(
          itemCount: listofTWchapters.length,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Get.to(() => SEDisplay(index: index));
                  },
                  child: CustomContainerButton(
                      height: 40,
                      width: Get.context!.width / 2,
                      containercolor: Colors.black,
                      fontsize: Dimensions.font12,
                      text: listofTWchapters[index],
                      textcolor: Colors.white),
                ),
              ))),
    );
  }
}
