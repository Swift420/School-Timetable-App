import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:get/get.dart';
import 'package:school/constants.dart';
import 'package:school/pages/help_center_page.dart';
import 'package:school/pages/notes.dart';
import 'package:school/pages/prof_page.dart';
import 'package:school/views/NotesPage.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:url_launcher/url_launcher.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);
  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  Future<void>? _launched;

  String _phone = '';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void>? _launched2;
  Future<void> _launchInBrowser2(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void>? _launched3;
  Future<void> _launchInBrowser3(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://elearning.nust.na/elearn/';
    const String toLaunch2 =
        'https://ienabler.nust.na/pls/prodi41/w99pkg.mi_login';
    const String toLaunch3 =
        'https://www.nust.na/sites/default/files/documents/NUST%20CAMPUS%20MAP_Nov2017.pdf';
    return SafeArea(
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/wallp.jpeg"),
                      fit: BoxFit.cover),
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.blue,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "User Profile",
                      style: GoogleFonts.roboto(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 185),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF121212),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  height: MediaQuery.of(context).size.height - 100,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => ProfilePageScreen());
                          },
                          child: Row(children: [
                            Icon(
                              Icons.person_outlined,
                              color: Colors.orangeAccent,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text("My Profile",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(
                                0xFF212121), //Color(0xFF3d3d3d), //Color(0xFFF5F6F9),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 3,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(NotesApp());
                          },
                          child: Row(children: [
                            Icon(
                              Icons.settings_outlined,
                              color: Colors.orangeAccent,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text("Settings",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF212121),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 3,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _launched3 = _launchInBrowser3(toLaunch3);
                            });
                          },
                          child: Row(children: [
                            Icon(
                              Icons.map_outlined,
                              color: Colors.orangeAccent,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text("Campus Map",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF212121),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => HelpCenter());
                          },
                          child: Row(children: [
                            Icon(
                              Icons.help_outline,
                              color: Colors.orangeAccent,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text("Help Center",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF212121),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _launched = _launchInBrowser(toLaunch);
                            });
                          },
                          child: Row(children: [
                            Icon(
                              Icons.language_outlined,
                              color: Colors.orangeAccent,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text("E-Learning",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF212121),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _launched2 = _launchInBrowser2(toLaunch2);
                            });
                          },
                          child: Row(children: [
                            Icon(
                              Icons.language_outlined,
                              color: Colors.orangeAccent,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text("Student ITS",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF212121),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);
  void setSize() async {
    await DesktopWindow.setMinWindowSize(Size(500, 500));
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      setSize();
    }
    return ValueListenableBuilder<Box<dynamic>>(
        valueListenable: Hive.box('darkModeBox').listenable(),
        builder: (context, box, widget) {
          int darkMode =
              box.get('darkMode', defaultValue: 2).runtimeType == bool
                  ? 2
                  : box.get('darkMode', defaultValue: 2);
          var barColor = darkMode == 2
              ? (WidgetsBinding.instance!.window.platformBrightness ==
                      Brightness.dark
                  ? kMatte
                  : kGlacier)
              : (darkMode == 1 ? kMatte : kGlacier);
          var iconBrightness =
              barColor == kMatte ? Brightness.light : Brightness.dark;
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            systemNavigationBarColor: barColor,
            systemNavigationBarIconBrightness: iconBrightness,
            statusBarColor: barColor,
            statusBarBrightness:
                barColor == kMatte ? Brightness.dark : Brightness.light,
            statusBarIconBrightness: iconBrightness,
          ));
          return MaterialApp(
            title: 'Notes',
            themeMode: darkMode == 2
                ? ThemeMode.system
                : (darkMode == 1 ? ThemeMode.dark : ThemeMode.light),
            theme: ThemeData.light().copyWith(
              primaryColor: kGlacier,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              scaffoldBackgroundColor: kGlacier,
              cardColor: kFrost,
              primaryIconTheme: IconThemeData(color: kMatte),
              snackBarTheme: SnackBarThemeData(
                backgroundColor: kFrost,
                behavior: SnackBarBehavior.floating,
              ),
              textTheme: TextTheme(
                headline1: GoogleFonts.poppins(
                  fontSize: 93,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1.5,
                  color: kMatte,
                ),
                headline2: GoogleFonts.poppins(
                  fontSize: 58,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -0.5,
                  color: kMatte,
                ),
                headline3: GoogleFonts.poppins(
                  fontSize: 46,
                  fontWeight: FontWeight.w400,
                  color: kMatte,
                ),
                headline4: GoogleFonts.poppins(
                  fontSize: 33,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                  color: kMatte,
                ),
                headline5: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  color: kMatte,
                ),
                headline6: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                  color: kMatte,
                ),
                subtitle1: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15,
                  color: kMatte,
                ),
                subtitle2: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  color: kMatte,
                ),
                bodyText1: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  color: kMatte,
                ),
                bodyText2: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                  color: kMatte,
                ),
                button: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.25,
                  color: kMatte,
                ),
                caption: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4,
                  color: kMatte,
                ),
                overline: GoogleFonts.openSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5,
                  color: kMatte,
                ),
              ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              primaryColor: kMatte,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              scaffoldBackgroundColor: kMatte,
              cardColor: kShadow,
              snackBarTheme: SnackBarThemeData(
                backgroundColor: kShadow,
                behavior: SnackBarBehavior.floating,
              ),
              textTheme: TextTheme(
                headline1: GoogleFonts.poppins(
                    fontSize: 93,
                    fontWeight: FontWeight.w300,
                    letterSpacing: -1.5),
                headline2: GoogleFonts.poppins(
                    fontSize: 58,
                    fontWeight: FontWeight.w300,
                    letterSpacing: -0.5),
                headline3: GoogleFonts.poppins(
                    fontSize: 46, fontWeight: FontWeight.w400),
                headline4: GoogleFonts.poppins(
                    fontSize: 33,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25),
                headline5: GoogleFonts.poppins(
                    fontSize: 23, fontWeight: FontWeight.w400),
                headline6: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.15),
                subtitle1: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.15),
                subtitle2: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1),
                bodyText1: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5),
                bodyText2: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25),
                button: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.25),
                caption: GoogleFonts.openSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.4),
                overline: GoogleFonts.openSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5),
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: NotesPage(darkMode, box),
          );
        });
  }
}
