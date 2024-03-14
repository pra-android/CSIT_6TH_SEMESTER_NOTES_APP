import 'package:csit_six_semester_notesapp/Widgets/ASPPage.dart';
import 'package:csit_six_semester_notesapp/Widgets/CDCPage.dart';
import 'package:csit_six_semester_notesapp/Widgets/ECPage.dart';
import 'package:csit_six_semester_notesapp/Widgets/EGPage.dart';
import 'package:csit_six_semester_notesapp/Widgets/Microsyllabus.dart';
import 'package:csit_six_semester_notesapp/Widgets/ModelQuestions.dart';
import 'package:csit_six_semester_notesapp/Widgets/Practicals.dart';
import 'package:csit_six_semester_notesapp/Widgets/SEPage.dart';
import 'package:csit_six_semester_notesapp/Widgets/TWPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List egovpdf = [
  "EGOV1.pdf",
  "EGOV2.pdf",
  "EGOV3.pdf",
  "EGOV4.pdf",
  "EGOV5.pdf",
];

List ecompdf = [
  "ECOM1.pdf",
  "ECOM2.pdf",
  "ECOM3.pdf",
  "ECOM4.pdf",
  "ECOM5.pdf",
  "ECOM6.pdf",
  "ECOM7.pdf",
];

List sepdf = [
  "SEChapter1.pdf",
  "SEChapter1.pdf",
  "SEChapter1.pdf",
  "SEChapter1.pdf",
  "SEChapter1.pdf",
  "SEChapter1.pdf",
  "SEChapter1.pdf",
  "SEChapter1.pdf",
  "SEChapter1.pdf",
  "SEChapter1.pdf"
];
List cdcpdf = [
  "CDCChapter1.pdf",
  "CDCChapter1.pdf",
  "CDCChapter1.pdf",
  "CDCChapter1.pdf",
];

List<String> assetimages = [
  "assets/girlso.png",
  "assets/boys.png",
  "assets/computers.png"
];

//list of subjects
List<String> listof_subjects = [
  "Software Engineering",
  "E-Governance",
  "ASP.NET",
  "Technical Writing",
  "Compiler Design",
  "E-commerce"
];
List<int> numberofpracticals = [5, 5, 10, 0, 6, 2];

//list of heading in Extras
List<String> heading = ["Model Questions", "Microsyllabus", "Practicals"];
List<Color> circleavatarcolorinsubjects = [
  Colors.deepOrange,
  Colors.pink,
  Colors.green,
  Colors.black,
  Colors.red,
  Colors.teal
];

List<IconData> icons = [
  FontAwesomeIcons.computer,
  FontAwesomeIcons.peopleCarryBox,
  FontAwesomeIcons.code,
  FontAwesomeIcons.bookOpenReader,
  FontAwesomeIcons.laptopCode,
  FontAwesomeIcons.amazon,
];
List model_questions = [
  "SEModel.pdf",
  "EGModel.pdf",
  "ASPModel.pdf",
  "TWModel.pdf",
  "CompilerModel.pdf",
  "ECModel.pdf"
];
List listofEGchapters = [
  "Introduction to E-Government and E-Governance",
  "Model of E-Governance",
  "E-Government Infrastructure and Development",
  "Security for E-Government",
  "Application of Data Warehousing and Data Mining in Government",
];
List listofASPDOTNET = [
  "Language Preliminaries",
  "Introduction to ASP.NET",
  "HTTP and ASP.NET Core",
  "Creating ASP.NET core MVC applications",
  "Working with Database",
  "State Management on ASP.NET Core Application",
  "Client-side Development in ASP.NET Core",
  "Securing in ASP.NET Core Application",
  "Hosting and Deploying ASP.NET Core Application",
];
List listofTWchapters = [
  "What is Technical Writing",
  "Audience and Purpose",
  "Writing Process",
  "Brief Correspondence",
  "Document design and Graphics",
  "Writing for the Web",
  "Information Reports",
  "Employment Communication",
  "Presentation",
  "Recommendation Reports",
  "Proposals",
  "Ethics in Work Space"
];
List listofSEchapters = [
  "Introduction",
  "Software Process",
  "Agile Software Development",
  "Requirements Engineering",
  "System Modeling",
  "Architectural Design",
  "Design and Implementation",
  "Software Testing",
  "Software Evolution",
  "Software Management"
];
List listofcdcchapters = [
  "Introduction to Compiler",
  "Lexical,Synatx and Semantics",
  "Symbol Table Design",
  "Intermediate Code Generator"
];

List listofecommercechapters = [
  "Introduction",
  "E-Commerce Business Model",
  "Electronic Payment System",
  "Building E-commerece System",
  "Security in E-commerce",
  "Digital Marketing",
  "Optimizing E-commerce System",
];
List routing_of_listviewseparated = [
  const ModelQuestions(),
  const Microsyllabus(),
  const Practicals(),
];

List listoflistviewseparated = [
  "Model Questions",
  "Micro Syllabus",
];

List listofpdfpages = [
  const SEPage(),
  const EGPage(),
  const ASPPage(),
  const TWPage(),
  const CDCPage(),
  const ECPage()
];
