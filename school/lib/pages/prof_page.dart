import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:school/pages/changeName.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  _ProfilePageScreenState createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  @override
  var box = Hive.box("studentBox1");
  int groupSelected = Hive.box("studentBox1").get(3);
  int yearSelected = Hive.box("studentBox1").get(4);

  int courseSelected = Hive.box("studentBox1").get(5);

  int SpecSelected = Hive.box("studentBox1").get(6);

  int notifSelected = Hive.box("studentBox1").get(15);

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

  Widget customNotif(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          notifSelected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (notifSelected == index) ? Colors.green : Colors.blueGrey,
        ),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
          color: (notifSelected == index) ? Colors.green : Colors.blueGrey,
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

  TextEditingController NameController = TextEditingController();
  TextEditingController NumController = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  var _formKey2 = GlobalKey<FormState>();

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
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/wallp.jpeg"))
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.purple,
              //     Colors.blue,
              //   ],
              //),
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 46,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Profile Settings",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
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
    return Expanded(
      flex: 5,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Group",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        customGroupRadio("Group 1", 1),
                        SizedBox(width: 10),
                        customGroupRadio("Group 2", 2),
                        SizedBox(width: 10),
                        customGroupRadio("Group 3", 3),
                        SizedBox(width: 10),
                        customGroupRadio("Group 4", 4),
                        SizedBox(width: 10),
                        customGroupRadio("Group 5", 5),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        customGroupRadio("Group 6", 6),
                        SizedBox(width: 10),
                        customGroupRadio("Group 7", 7),
                        SizedBox(width: 10),
                        customGroupRadio("Group 8", 8),
                        SizedBox(width: 10),
                        customGroupRadio("Group 9", 9),
                        SizedBox(width: 10),
                        customGroupRadio("Group 10", 10),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Year",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          customYearRadio("1st Year", 1),
                          SizedBox(width: 20),
                          customYearRadio("2nd Year", 2),
                          SizedBox(width: 20),
                          customYearRadio("3rd Year", 3),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Course",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          customCourseRadio("Comp. Science", 1),
                          SizedBox(width: 20),
                          customCourseRadio("CS. Cyber Security", 2),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Specialization",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          customNotif("On", 1),
                          SizedBox(width: 20),
                          customNotif("Off", 2),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => ChangeNameStudent());
                    },
                    child: Row(children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text("Change Name or Student Number",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              letterSpacing: 0.5,
                            )),
                      ),
                    ]),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF5F6F9),
                      padding: EdgeInsets.all(20),
                      elevation: 0.3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //print(DateTime.now().weekday);
                      //print(selectedValue);

                      setState(() {
                        box.put(3, groupSelected);
                        box.put(4, yearSelected);
                        box.put(5, courseSelected);
                        box.put(6, SpecSelected);

                        //print(box.get(6));
                        //print(SpecSelected);
                        Navigator.pop(context);
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text("Save"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
