import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school/pages/notes.dart';
import 'package:school/pages/prof_page.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondSettings extends StatefulWidget {
  const SecondSettings({Key? key}) : super(key: key);

  @override
  _SecondSettingsState createState() => _SecondSettingsState();
}

class _SecondSettingsState extends State<SecondSettings> {
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
  Future<void>? _launched4;
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     colors: [
          //       Colors.purple,
          //       Colors.blue,
          //     ],
          //   ),
          // ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/wallpaper2.jpg"))
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.purple,
              //     Colors.blue,
              //   ],
              // ),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Text(
                          "User Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 46,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //   "Enter a beautiful World",
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 22,
                      //     fontWeight: FontWeight.w300,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              TextMethod(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded TextMethod() {
    const String toLaunch = 'https://elearning.nust.na/elearn/';
    const String toLaunch2 =
        'https://ienabler.nust.na/pls/prodi41/w99pkg.mi_login';
    const String toLaunch3 =
        'https://www.nust.na/sites/default/files/documents/NUST%20CAMPUS%20MAP_Nov2017.pdf';
    const String toLaunch4 =
        'https://www.nust.na/sites/default/files/documents/2021-ACADEMIC-CALENDAR-SERIES-TWO-24-MAY-SPECIAL-SENEX.pdf';
    return Expanded(
      flex: 5,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF121212),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Radio Buttons
              SizedBox(height: 0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(TestSchedule());
                    //Get.to(SecondSettings());
                  },
                  child: Row(children: [
                    Icon(
                      Icons.schedule_outlined,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text("Schedule a Test",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _launched4 = _launchInBrowser3(toLaunch4);
                    });
                  },
                  child: Row(children: [
                    Icon(
                      Icons.school_outlined,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text("Academic Calendar",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
    );
  }
}
