import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:school/screens/homepage.dart';
import 'package:sqflite/sqflite.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:school/constants.dart';

int? selectedId;
int? safe;
final textController = TextEditingController();
final bodyController = TextEditingController();
String? dat;
FlutterLocalNotificationsPlugin localNotification =
    FlutterLocalNotificationsPlugin();
DateTime _dateTime = DateTime.now();

var why1 = DateTime.parse(_dateTime.toString());

class TestSchedule extends StatefulWidget {
  const TestSchedule({Key? key}) : super(key: key);

  @override
  _TestScheduleState createState() => _TestScheduleState();
}

class _TestScheduleState extends State<TestSchedule> {
  @override
  void initState() {
    safe = Hive.box("studentBox1").get(20) + 1;
    initializeSetting();
    super.initState();
    tz.initializeTimeZones();
  }

  Future _showNotification() async {
    var androidDetails = new AndroidNotificationDetails(
      "channelId",
      "Local Notification",
      "This is a description",
      importance: Importance.high,
    );
    var iosDetails = new IOSNotificationDetails();
    var generalNotificationDetails =
        NotificationDetails(android: androidDetails, iOS: iosDetails);
    await localNotification.show(
        0, "Notif Title", "This is the body", generalNotificationDetails);
  }

  List<Color> colors = [
    Colors.red[300]!,
    Colors.green[300]!,
    Colors.blue[300]!,
    Colors.pink[300]!,
    Colors.purple[300]!
  ];
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        leading: IconButton(
            onPressed: () {
              Get.to(HomePageScreen());
            },
            icon: Icon(Icons.arrow_back_ios)),
        elevation: 0,
        title: Text("Schedule Your Tests"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          // Grocery grocery = Grocery(date: grocery.body, name: name, body: body);
          Get.to(page());
          safe = Hive.box("studentBox1").get(20) + 1;
          Hive.box("studentBox1").put(20, safe);
          print(safe);
        },
        child: Icon(Icons.add, color: Color(0xFF121212)),
      ),
      body: Center(
        child: FutureBuilder<List<Grocery>>(
            future: DatabaseHelper.instance.getGroceries(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Grocery>> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: Text('Loading...'));
              }
              return snapshot.data!.isEmpty
                  ? Center(
                      child: Text('No Tests Scheduled...',
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                          )))
                  : ListView(
                      children: snapshot.data!.map((grocery) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              bodyController.text = grocery.body;
                              textController.text = grocery.name;
                              Hive.box("studentBox1").put(20, safe);
                              print(grocery.date);
                              safe = grocery.id;
                              print(grocery.id);
                            });
                            //Get.to(page2());
                          },
                          onLongPress: () {
                            setState(() {
                              print(grocery.id);
                              DatabaseHelper.instance.remove(grocery.id!);
                              localNotification.cancel(grocery.id!);
                            });
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                left: 15,
                                right: 15,
                              ),
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      //color: Color(0xff29404E),
                                      color: Color(0xFF3d3d3d),
                                      //color: Color(0xFF212121),
                                      //colors[random.nextInt(colors.length)],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, bottom: 15),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(grocery.name,
                                                style: GoogleFonts.openSans(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(height: 15),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 55.0, left: 15),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          children: [
                                            Text(
                                              grocery.date
                                                  .toString()
                                                  .substring(10, 19),
                                              style: GoogleFonts.montserrat(
                                                fontSize: 13,
                                                color: Colors.white70,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: false,
                                            ),
                                            SizedBox(height: 15),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 90, left: 210),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            grocery.date
                                                .toString()
                                                .substring(0, 10),
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        );
                      }).toList(),
                    );
            }),
      ),
    );
  }

  Future<void> displayNotification(
      String lesson, DateTime lessonTime, int id) async {
    FlutterLocalNotificationsPlugin().zonedSchedule(
        id,
        lesson,
        "${lesson} ",
        tz.TZDateTime.from(lessonTime, tz.local),
        NotificationDetails(
          android: AndroidNotificationDetails(
              "channel id", "channel name", "channel Description"),
        ),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true);
  }
}

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  DateTime _dateTime = DateTime.now();
  int maxLines = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            safe = Hive.box("studentBox1").get(20);
            Hive.box("studentBox1").put(20, safe);
          });
          await DatabaseHelper.instance.add(
            Grocery(
                id: safe,
                name: textController.text,
                date: _dateTime.toString(),
                body: bodyController.text),
          );
          Grocery _grocery;
          print(safe);

          displayNotification(textController.text, _dateTime, safe!);
          // Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => TestSchedule(),
            ),
          );
          //Get.off(() => TestSchedule());
          textController.clear();
          bodyController.clear();
        },
        child: Icon(Icons.save_outlined),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 12),
                child: InkWell(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TestSchedule(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: TextFormField(
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: "Title",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24, bottom: 24),
                  child: Container(
                    margin: EdgeInsets.all(12),
                    height: maxLines * 24.0,
                    child: TextField(
                      controller: bodyController,
                      maxLines: maxLines,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: "",
                        //fillColor: Colors.red[300],
                        //filled: true,
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: CupertinoDatePicker(
                  initialDateTime: _dateTime,
                  onDateTimeChanged: (dateTime) {
                    setState(() {
                      _dateTime = dateTime;
                      print(_dateTime);
                    });
                  },
                  use24hFormat: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> displayNotification(
      String title, DateTime scheduleTime, int id) async {
    FlutterLocalNotificationsPlugin().zonedSchedule(
        id,
        title,
        "${title} Class Has Started",
        tz.TZDateTime.from(scheduleTime, tz.local),
        NotificationDetails(
          android: AndroidNotificationDetails(
              "channel id", "channel name", "channel Description"),
        ),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true);
  }
}

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  DateTime _dateTime = DateTime.now();
  int maxLines = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await DatabaseHelper.instance.update(Grocery(
              id: safe,
              name: textController.text,
              date: _dateTime.toString(),
              body: bodyController.text));
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => TestSchedule(),
            ),
          );
          textController.clear();
          bodyController.clear();
        },
        child: Icon(Icons.edit_outlined),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 12),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TestSchedule(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios))),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: TextFormField(
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: "Title",
                      labelText: textController.text,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24, bottom: 24),
                  child: Container(
                    margin: EdgeInsets.all(12),
                    height: maxLines * 24.0,
                    child: TextField(
                      controller: bodyController,
                      maxLines: maxLines,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: "",
                        labelText: bodyController.text,

                        //fillColor: Colors.red[300],
                        //filled: true,
                      ),
                      maxLength: 45,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: CupertinoDatePicker(
                  initialDateTime: _dateTime,
                  onDateTimeChanged: (dateTime) {
                    setState(() {
                      _dateTime = dateTime;
                      print(_dateTime);
                    });
                  },
                  use24hFormat: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> displayNotification(
      String lesson, DateTime lessonTime, int id) async {
    FlutterLocalNotificationsPlugin().zonedSchedule(
        id,
        lesson,
        "${lesson} Class Has Started",
        tz.TZDateTime.from(lessonTime, tz.local),
        NotificationDetails(
          android: AndroidNotificationDetails(
              "channel id", "channel name", "channel Description"),
        ),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true);
  }
}

class Grocery {
  final int? id;
  final String name;
  final String date;
  final String body;

  Grocery(
      {this.id, required this.date, required this.name, required this.body});

  factory Grocery.fromMap(Map<String, dynamic> json) => new Grocery(
        id: json['id'],
        name: json['name'],
        date: json['date'],
        body: json['body'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'date': date,
      'body': body,
    };
  }
}

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'testing3.db');
    return await openDatabase(
      path,
      version: 2,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE testing3(
          id INTEGER PRIMARY KEY,
          name TEXT,
          date TEXT,
          body TEXT
      )
      ''');
  }

  Future<List<Grocery>> getGroceries() async {
    Database db = await instance.database;
    var groceries = await db.query('testing3', orderBy: 'date');
    List<Grocery> groceryList = groceries.isNotEmpty
        ? groceries.map((c) => Grocery.fromMap(c)).toList()
        : [];
    return groceryList;
  }

  Future<int> add(Grocery grocery) async {
    Database db = await instance.database;
    return await db.insert('testing3', grocery.toMap());
  }

  Future<int> remove(int id) async {
    Database db = await instance.database;
    return await db.delete('testing3', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> update(Grocery grocery) async {
    Database db = await instance.database;
    return await db.update('testing3', grocery.toMap(),
        where: "id = ?", whereArgs: [grocery.id]);
  }
}

void initializeSetting() async {
  var initializeAndroid = AndroidInitializationSettings("@mipmap/ic_launcher");
  var initializeSetting = InitializationSettings(android: initializeAndroid);
  await localNotification.initialize(initializeSetting);
}
