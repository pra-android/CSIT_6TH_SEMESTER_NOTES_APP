import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CDCDisplay extends StatelessWidget {
  final int index;
  const CDCDisplay({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset("assets/${cdcpdf[index]}"),
    );
  }
}
