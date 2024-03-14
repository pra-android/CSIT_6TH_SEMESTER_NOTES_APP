import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.recommend,
                  color: Colors.white,
                )),
            title: Text(
              heading[0],
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: const Text("Of all Subjects"),
            trailing: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(95, 40),
                    side: const BorderSide(color: Colors.black, width: 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0))),
                onPressed: () {
                  Get.to(routing_of_listviewseparated[0]);

                  print("move to next page");
                },
                child: const Text(
                  "Visit",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const Divider(
            height: 0.2,
            color: Colors.black,
            thickness: 0.2,
          ),
          ListTile(
            leading: const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.recommend,
                  color: Colors.white,
                )),
            title: Text(
              heading[1],
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: const Text("Of all Subjects"),
            trailing: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    fixedSize: Size(95, 40),
                    side: const BorderSide(color: Colors.black, width: 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0))),
                onPressed: () {
                  Get.to(routing_of_listviewseparated[1]);

                  print("move to next page");
                },
                child: const Text(
                  "Visit",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const Divider(
            height: 0.2,
            color: Colors.black,
            thickness: 0.2,
          ),
          ListTile(
            leading: const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.recommend,
                  color: Colors.white,
                )),
            title: Text(
              heading[2],
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: const Text("Of all Subjects"),
            trailing: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    fixedSize: Size(95, 40),
                    side: const BorderSide(color: Colors.black, width: 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0))),
                onPressed: () {
                  Get.to(routing_of_listviewseparated[2]);

                  print("move to next page");
                },
                child: const Text(
                  "Visit",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const Divider(
            height: 0.2,
            color: Colors.black,
            thickness: 0.2,
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Copyright 2058,Nepal;©",
            style: TextStyle(color: Colors.black, fontSize: 11),
          )
        ],
      ),
    );
  }
}
