import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Microsyllabus extends StatefulWidget {
  const Microsyllabus({super.key});

  @override
  State<Microsyllabus> createState() => _MicrosyllabusState();
}

class _MicrosyllabusState extends State<Microsyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset("assets/microsyllabus.pdf"),
    );
  }
}
