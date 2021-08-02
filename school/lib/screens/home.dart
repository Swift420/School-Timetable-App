import 'package:flutter/material.dart';
import 'package:school/controllers/dateController.dart';
import 'package:school/controllers/otherController.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:school/methods/ultimateMethod.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  final DateController dateController = Get.find();
  final OtherDateController otherDateController = Get.find();

  var date = DateTime.now();
  var box = Hive.box("studentBox1");

  void changeDate() {
    setState(() {
      date = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: MainWidget(context),
    );
  }

  Stack MainWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
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
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              if (box.get(5) == 1) ...[
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Computer Science",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ] else if (box.get(5) == 2) ...[
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Computer Science: Cyber Security",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hi ${Hive.box("studentBox1").get(1)}",
                    style: GoogleFonts.roboto(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text("${Hive.box("studentBox1").get(2)}",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 185,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFF121212),
              //color: Color(0xff102733),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TODAY CLASSES",
                      style: GoogleFonts.notoSans(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "GROUP ${Hive.box("studentBox1").get(3)}",
                      style: GoogleFonts.notoSans(
                        fontSize: 12,
                        color: Colors.blue[300],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height - 300,
                  child: SingleChildScrollView(
                    child: UltimateColumn(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
