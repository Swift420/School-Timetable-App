import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

//Group -3
//Year -4
//course - 5
//specialization -6

var box = Hive.box("studentBox1");

class LecturerScreen extends StatefulWidget {
  const LecturerScreen({Key? key}) : super(key: key);

  @override
  _LecturerScreenState createState() => _LecturerScreenState();
}

class _LecturerScreenState extends State<LecturerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            if (box.get(5) == 1) ...[
              if (box.get(4) == 1) ...[
                if (box.get(3) == 1) ...[
                  TimeTableMethod("timetables", 1, 1),
                ] else if (box.get(3) == 2) ...[
                  TimeTableMethod("timetables", 1, 2),
                ] else if (box.get(3) == 3) ...[
                  TimeTableMethod("timetables", 1, 3),
                ] else if (box.get(3) == 4) ...[
                  TimeTableMethod("timetables", 1, 4),
                ] else if (box.get(3) == 5) ...[
                  TimeTableMethod("timetables", 1, 5),
                ] else if (box.get(3) == 6) ...[
                  TimeTableMethod("timetables", 1, 6),
                ] else if (box.get(3) == 7) ...[
                  TimeTableMethod("timetables", 1, 7),
                ] else if (box.get(3) == 8) ...[
                  TimeTableMethod("timetables", 1, 8),
                ] else if (box.get(3) == 9) ...[
                  TimeTableMethod("timetables", 1, 10),
                ] else if (box.get(3) == 10) ...[
                  TimeTableMethod("timetables", 1, 10),
                ]
              ] else if (box.get(4) == 2) ...[
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    if (box.get(6) == 3) ...[
                      if (box.get(3) == 1) ...[
                        TimeTableMethod("timetablesY2", 2, 1),
                      ] else ...[
                        TimeTableMethod("timetablesY2", 2, 1),
                      ]
                    ] else if (box.get(6) == 2) ...[
                      if (box.get(3) == 2) ...[
                        TimeTableMethod("timetablesY2", 2, 2),
                      ] else ...[
                        TimeTableMethod("timetablesY2", 2, 2),
                      ]
                    ] else if (box.get(6) == 1) ...[
                      if (box.get(3) == 1) ...[
                        TimeTableMethod("timetablesY2", 2, 3),
                      ] else ...[
                        TimeTableMethod("timetablesY2", 2, 3),
                      ]
                    ]
                  ],
                ),
              ]
            ] else if (box.get(5) == 2) ...[
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  if (box.get(4) == 2) ...[
                    TimeTableMethod("timetablesY2", 2, 12),
                  ]
                ],
              )
            ]
          ],
        ),
      ),
    ));
  }

  StreamBuilder<QuerySnapshot<Map<String, dynamic>>> TimeTableMethod(
      String urlImg, int year, int group) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection(urlImg)
          .where("group", isEqualTo: group)
          .where("year", isEqualTo: year)
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
          //CircularProgressIndicator();
        }

        return Column(
            children: snapshot.data!.docs.map((grocery) {
          return Container(
            child: CachedNetworkImage(
              imageUrl: grocery["imgUrl"],
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          );
        }).toList());
      },
    );
  }
}
