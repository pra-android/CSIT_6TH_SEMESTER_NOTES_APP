import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomContainerButton.dart';
import 'package:csit_six_semester_notesapp/Widgets/ModelQuestionsDisplayPage.dart';
import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ModelQuestions extends StatefulWidget {
  const ModelQuestions({super.key});

  @override
  State<ModelQuestions> createState() => _ModelQuestionsState();
}

class _ModelQuestionsState extends State<ModelQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              )),
          backgroundColor: Colors.purple,
          title: Text(
            "Model Questions",
            style: TextStyle(color: Colors.white, fontSize: Dimensions.font16),
          )),
      body: ListView.builder(
          itemCount: listof_subjects.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ModelQuestionDisplayPage(index: index)));
                },
                child: CustomContainerButton(
                  height: 45,
                  width: Get.context!.width / 2,
                  containercolor: Colors.purple,
                  fontsize: Dimensions.font14,
                  text: listof_subjects[index],
                  textcolor: Colors.white,
                  googlefonts: 'GoogleFonts.lato()',
                ),
              ),
            );
          }),
    );
  }
}
