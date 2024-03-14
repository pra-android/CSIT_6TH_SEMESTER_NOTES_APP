import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSliverGridBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 4,
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          childAspectRatio: 1.3),
      itemCount: 6,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => listofpdfpages[index]));
        },
        child: Column(
          children: [
            Container(
              height: 67,
              width: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: circleavatarcolorinsubjects[index]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    FaIcon(
                      icons[index],
                      color: Colors.white,
                    ),
                  ]),
              /*  const SizedBox(
                      height: 11,
                    ),
                    Container(
                      height: 20,
                      color: Colors.amber,
                      child: Center(
                        child: Text(listof_subjects[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      ),
                    )*/
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              listof_subjects[index],
              style: TextStyle(color: Colors.black, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
