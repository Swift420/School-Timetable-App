import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:get/get.dart';
import 'package:school/pages/help_center_page.dart';
import 'package:school/pages/notes.dart';
import 'package:school/pages/prof_page.dart';

import 'package:url_launcher/url_launcher.dart';

class OtherScreen extends StatefulWidget {
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
                      color: Colors.white,
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
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF5F6F9),
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
                            Get.to(TestSchedule());
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
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF5F6F9),
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
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF5F6F9),
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
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF5F6F9),
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
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF5F6F9),
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
                              child: Text(" Student ITS",
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                  )),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black),
                          ]),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF5F6F9),
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
