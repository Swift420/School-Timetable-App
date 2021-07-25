import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:school/controllers/dateController.dart';

import 'package:school/screens/homepage.dart';
import 'package:school/screens/login.dart';

import 'controllers/otherController.dart';

StreamController<int> streamController = StreamController();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  await Hive.openBox("studentBox1");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final DateController dateController = Get.put(DateController());
  final OtherDateController otherDateController =
      Get.put(OtherDateController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Hive.box("studentBox1").isNotEmpty ? HomePageScreen() : LoginPage(),
    );
  }
}
