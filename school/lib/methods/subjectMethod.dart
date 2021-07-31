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

  Subjects1(
      {required this.module,
      required this.lecturer,
      required this.loc,
      required this.time,
      required this.id});

  @override
  _Subjects1State createState() => _Subjects1State();
}

class _Subjects1State extends State<Subjects1> {
  @override
  void initState() {
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

  bool selected = true;

  @override
  Widget build(BuildContext context) {
    var why = DateTime.parse(
        "${DateTime.now().toString().substring(0, 10)} ${widget.time}");

    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9FB),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),
              Center(
                child: Text(
                  "${widget.time}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${widget.module}"),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "${widget.loc}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Text(
                      "${widget.lecturer}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(selected
                ? Icons.notifications_none
                : Icons.notifications_active),
            onPressed: () async {
              // print(why);
              print(widget.time);
              print(widget.module);
              print(widget.id);

              setState(() {
                selected = !selected;
              });

              if (selected == false) {
                displayNotification("${widget.module}", why, widget.id);
              } else if (selected == true) {
                localNotification.cancel(widget.id);
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
