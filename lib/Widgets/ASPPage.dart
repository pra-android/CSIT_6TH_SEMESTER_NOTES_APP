import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/BigText.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomContainerButton.dart';
import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ASPPage extends StatelessWidget {
  const ASPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: BigText(text: "ASP.NET", color: Colors.white, fontsize: 20),
      ),
      body: ListView.builder(
          itemCount: listofASPDOTNET.length,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Get.to(() => ASPDisplay(index: index));
                  },
                  child: CustomContainerButton(
                      height: 40,
                      width: Get.context!.width / 2,
                      containercolor: Colors.green,
                      fontsize: Dimensions.font12,
                      text: listofASPDOTNET[index],
                      textcolor: Colors.white),
                ),
              ))),
    );
  }
}
