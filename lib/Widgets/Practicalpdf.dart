import 'package:csit_six_semester_notesapp/Utils/Dimensions.dart';
import 'package:flutter/material.dart';

class Practicalpdf extends StatelessWidget {
  const Practicalpdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "Practical Content",
          style: TextStyle(fontSize: Dimensions.font16),
        ),
      ),
      body: const Center(child: Text("No Practical Available")),
    );
  }
}
