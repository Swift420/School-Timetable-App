import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

bool selected = true;

FlutterLocalNotificationsPlugin localNotification =
    FlutterLocalNotificationsPlugin();

class Subjects1 extends StatefulWidget {
  String module;
  String loc;
  String lecturer;
  String time;
  int id;
  int col;

  Subjects1({
    required this.module,
    required this.lecturer,
    required this.loc,
    required this.time,
    required this.id,
    required this.col,
  });

  @override
  _Subjects1State createState() => _Subjects1State();
}

class _Subjects1State extends State<Subjects1> {
  bool selected = true;

  @override
  void initState() {
    // selected = PageStorage.of(context)
    //         ?.readState(context, identifier: ValueKey("selected_value")) ??
    //     true;
    initializeSetting();
    super.initState();
    tz.initializeTimeZones();
  }

  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.green[300]!,
    Colors.orange,
    Colors.grey,
    Colors.yellow,
    Colors.purple,
    Colors.red,
  ];

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

  @override
  Widget build(BuildContext context) {
    var why = DateTime.parse(
        "${DateTime.now().toString().substring(0, 10)} ${widget.time}");

    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: //Color(0xFF3d3d3d),
            Color(0xFF212121),
        //Color(0xFFF9F9FB),
        //color: Color(0xff29404E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Center(
                child: Text(
                  "${widget.time}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.white.withOpacity(0.5),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 4),
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: colors[widget.col],
                    ),
                    SizedBox(width: 5),
                    Text(
                      "${widget.module}",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white70,
                      size: 20,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "${widget.loc}",
                      style: TextStyle(
                        color: Colors.white,
                        //color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white70,
                      //color: Colors.grey,
                      size: 21,
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Text(
                      "${widget.lecturer}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              selected ? Icons.notifications_none : Icons.notifications_none,
              color: Colors.white,
            ),
            onPressed: () async {
              // print(why);
              print(widget.time);
              print(widget.module);
              print(widget.id);

              setState(() {
                selected = !selected;
              });
              // PageStorage.of(context)?.writeState(
              //   context,
              //   selected,
              //   identifier: ValueKey("selected_value"),
              // );
              if (selected == false) {
                displayNotification("${widget.module}", why, widget.id);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Text(
                      "Notification set for ${widget.module}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(bottom: 15.0, left: 20, right: 20),
                  //padding: EdgeInsets.all(20.0),
                  backgroundColor: Colors.grey[100],
                  duration: const Duration(seconds: 2),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ));
              } else if (selected == true) {
                localNotification.cancel(widget.id);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      "Notification Cancelled for ${widget.module}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(bottom: 15.0, left: 20, right: 20),
                  //padding: EdgeInsets.all(20.0),
                  backgroundColor: Colors.grey[100],
                  duration: const Duration(seconds: 2),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ));
              }
            },
          ),
        ],
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

void initializeSetting() async {
  var initializeAndroid = AndroidInitializationSettings("@mipmap/ic_launcher");
  var initializeSetting = InitializationSettings(android: initializeAndroid);
  await localNotification.initialize(initializeSetting);
}
