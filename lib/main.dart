import 'package:csit_six_semester_notesapp/NotificationServices.dart';
import 'package:csit_six_semester_notesapp/SplashScreen.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomListTile.dart';
import 'package:csit_six_semester_notesapp/Widgets/CustomSliverGridBuilder.dart';
import 'package:csit_six_semester_notesapp/Widgets/listofarray.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'LoginPage.dart';

void main() async {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.requestNotificationsPermission();
  await NotificationService.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  final String? usercontroller;
  const HomePage({super.key, this.usercontroller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> sliderimages = [
    "assets/slider1.webp",
    "assets/slider2.webp",
    "assets/slider3.webp",
    "assets/slider4.jpg",
    "assets/slider5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: IconButton(
              onPressed: () {
                Get.off(() => LoginPage());
              },
              icon: const Icon(
                Icons.logout,
                size: 26,
                color: Colors.white,
              )),
          title: const Text(
            "Learn and Grow Digitally",
            style: TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 8.0),
              child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Center(
                      child: Text(
                    widget.usercontroller![0],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ))),
            ),
          ],
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverToBoxAdapter(
              child: CarouselSlider(
            options: CarouselOptions(height: 185.0, autoPlay: true),
            items: sliderimages.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.green),
                      child: Image.asset(
                        i,
                        fit: BoxFit.fill,
                      ));
                },
              );
            }).toList(),
          )),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 5.0),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Courses 📚 ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
            padding: const EdgeInsets.only(top: 5.0),
            sliver: CustomSliverGridBuilder()),
        SliverPadding(
          padding: const EdgeInsets.only(top: 5.0),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        height: 40,
                        width: 240,
                        child: const Center(
                          child: Text(
                            "Recommended for you 📢 ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(child: CustomListTile()),
        ),
      ]),
    );
  }
}
