import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:csit_six_semester_notesapp/Widgets/Practicalpdf.dart';
import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Practicals extends StatelessWidget {
  const Practicals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text(
            "Practicals",
            style: TextStyle(fontSize: Dimensions.font16, color: Colors.white),
          ),
        ),
        body: GridView.builder(
            itemCount: 6, // Number of items you want to display
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 8.0, // Spacing between columns
              mainAxisSpacing: 8.0, // Spacing between rows
            ),
            itemBuilder: (BuildContext context, int index) {
              // The builder function is called for each item
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => Practicalpdf());
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(18.0)),
                      height: 200,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    (index + 1).toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            listof_subjects[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Dimensions.font14),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "<${numberofpracticals[index]} Practicals",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ),
              );
            }));
  }
}
