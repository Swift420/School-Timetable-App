import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:school/controllers/dateController.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:school/models/note.dart';
import 'package:school/pages/afterLogin_details_page.dart';

import 'package:school/screens/homepage.dart';
import 'package:school/screens/login.dart';

import 'controllers/otherController.dart';

StreamController<int> streamController = StreamController();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  await Hive.openBox("studentBox1");
  await Firebase.initializeApp();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(
    NoteAdapter(),
  );

  await Hive.openBox('darkModeBox');

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black45,
    statusBarBrightness: Brightness.light,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final DateController dateController = Get.put(DateController());
  final OtherDateController otherDateController =
      Get.put(OtherDateController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // themeMode: ThemeMode.system,
      // darkTheme: ThemeData(
      //     brightness: Brightness.dark, accentColor: Colors.amber[700]),
      debugShowCheckedModeBanner: false,
      home: Hive.box("studentBox1").isNotEmpty ? HomePageScreen() : LoginPage(),
    );
  }
}
