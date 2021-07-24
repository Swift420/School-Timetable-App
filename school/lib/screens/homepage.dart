import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school/controllers/dateController.dart';
import 'package:school/controllers/otherController.dart';
import 'package:school/screens/LecturerScreen.dart';
import 'package:school/screens/home.dart';
import 'package:school/screens/TimeTable.dart';
import 'package:school/screens/Settings.dart';
import 'dart:async';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final tabs = [
    HomeScreen(),
    LecturerScreen(),
    SettingsScreen(),
    OtherScreen(),
  ];

  static var date = DateTime.now();

  final DateController dateController = Get.find();
  final OtherDateController otherDateController = Get.find();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        //backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "TimeTable"),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "Lecturers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "User Profile"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          dateController.changeDate();
          otherDateController.changeOtherDate();
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}
