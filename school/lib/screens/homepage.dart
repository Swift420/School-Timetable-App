import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:school/controllers/dateController.dart';
import 'package:school/controllers/otherController.dart';
import 'package:school/screens/LecturerScreen.dart';
import 'package:school/screens/home.dart';
import 'package:school/screens/TimeTable.dart';
import 'package:school/screens/Settings.dart';
import 'package:school/screens/secondSettings.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with AutomaticKeepAliveClientMixin {
  final tabs = [
    SettingsScreen(
      key: PageStorageKey("Lecturer Screen"),
    ),
    LecturerScreen(
      key: PageStorageKey("TimeTable Screen"),
    ),
    HomeScreen(
      key: PageStorageKey("Home Screen"),
    ),
    // OtherScreen(
    //   key: PageStorageKey("Settings Screen"),
    // ),
    SecondSettings(
      key: PageStorageKey("Settings Screen 2"),
    ),
    NotesApp(
      key: PageStorageKey("Notes Screen"),
    ),
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  static var date = DateTime.now();

  final DateController dateController = Get.find();
  final OtherDateController otherDateController = Get.find();
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF212121),
        currentIndex: _currentIndex,

        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.white,
        //backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "Lecturers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "TimeTable"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.notes), label: "Notes"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          dateController.changeDate();
          otherDateController.changeOtherDate();
          //print(Hive.box("studentBox1").get(10));

          print(Hive.box("studentBox1").get(20));
        },
      ),
      body: PageStorage(
        child: tabs[_currentIndex],
        bucket: bucket,
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
