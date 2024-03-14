import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';

class CustomListViewSeperated extends StatefulWidget {
  @override
  State<CustomListViewSeperated> createState() =>
      _CustomListViewSeperatedState();
}

class _CustomListViewSeperatedState extends State<CustomListViewSeperated> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 17.0,
        );
      },
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            tileColor: Colors.blue.shade50,
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 26,
              child: Text(
                "${index + 1}",
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            subtitle: const Text("Including All Subjects"),
            title: Text(listoflistviewseparated[index]),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: Colors.grey.shade200),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              routing_of_listviewseparated[index]));
                },
                child: const Text(
                  "Go To",
                  style: TextStyle(color: Colors.black),
                )),
          ),
        );
      },
    );
  }
}
