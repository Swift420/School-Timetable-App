import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:school/screens/home.dart';
import 'package:school/screens/homepage.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({Key? key}) : super(key: key);

  @override
  _detailsPageState createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  var box = Hive.box("studentBox1");
  int courseSelected = 1;
  int yearSelected = 2;
  int groupSelected = 1;
  int SpecSelected = 0;

  Widget customSpecRadio(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          SpecSelected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (SpecSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
          color: (SpecSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
    );
  }

  Widget customCourseRadio(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          courseSelected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (courseSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
          color: (courseSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
    );
  }

  Widget customYearRadio(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          yearSelected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (yearSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
          color: (yearSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
    );
  }

  Widget customGroupRadio(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          groupSelected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (groupSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
          color: (groupSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
                titleWidget: _title("Which Course are you doing"),
                bodyWidget: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customCourseRadio("Comp. Science", 1),
                        SizedBox(
                          width: 10,
                        ),
                        customCourseRadio("CS. Cyber Security", 2),
                      ],
                    ),
                  ],
                ),
                image: buildImage("assets/images/Digitalnomad-bro.png")),
            PageViewModel(
                titleWidget: _title("What year are you?"),
                bodyWidget: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customYearRadio("1st Year", 1),
                      customYearRadio("2nd Year", 2),
                      customYearRadio("3rd Year", 3),
                    ],
                  ),
                ),
                image: buildImage("assets/images/Digitalnomad-pana.png")),
            PageViewModel(
                titleWidget: _title("What group do you belong to?"),
                bodyWidget: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customGroupRadio("Group 1", 1),
                          customGroupRadio("Group 2", 2),
                          customGroupRadio("Group 3", 3),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customGroupRadio("Group 4", 4),
                          customGroupRadio("Group 5", 5),
                          customGroupRadio("Group 6", 6),
                        ],
                      ),
                    ),
                  ],
                ),
                image: buildImage("assets/images/Digitalnomad-amico.png")),
            PageViewModel(
                titleWidget: _title("What are you Specializing in?"),
                bodyWidget: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customSpecRadio("Software Development", 1),
                        SizedBox(width: 20),
                        customSpecRadio("Network Administration", 2),
                        SizedBox(width: 20),
                        customSpecRadio("Communications Network", 3),
                      ],
                    ),
                  ),
                ),
                image: buildImage("assets/images/Typing-bro.png")),
          ],
          done: Text('Done'),
          onDone: () {
            box.put(3, groupSelected);
            box.put(4, yearSelected);
            box.put(5, courseSelected);
            box.put(6, SpecSelected);
            Get.off(() => HomePageScreen());
          },
          doneColor: Colors.orangeAccent,
          next: Icon(
            Icons.arrow_forward_outlined,
            color: Colors.orangeAccent,
          ),
          showNextButton: true,
          showSkipButton: true,
          skip: Text("Skip"),
          skipColor: Colors.black45,
          dotsDecorator: DotsDecorator(
            activeColor: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }

  Column _title(String titleName) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(titleName,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget buildImage(path) => Center(
          child: Image.asset(
        path,
        width: 350,
      ));
}
