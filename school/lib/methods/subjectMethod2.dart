import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:school/controllers/dateController.dart';
import 'package:school/controllers/otherController.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'package:school/methods/subjectMethod.dart';

var box = Hive.box("studentBox1");
final DateController dateController = Get.find();
final OtherDateController otherDateController = Get.find();

//Group -3
//Year -4
//course - 5
//specialization -6

//ChangingClassMethod1

Column CompScienceClassY1() {
  return Column(
    children: [
      if (box.get(3) == 1) ...[
        if (dateController.class2.value == 1) ...[
          FbCollection(1, "Mon", "Y1"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollection(1, "Tue", "Y1"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollection(1, "Wed", "Y1"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollection(1, "Thurs", "Y1"),
        ] else if (dateController.class2.value == 5) ...[
          FbCollection(1, "Fri", "Y1"),
        ] else if (dateController.class2.value == 7) ...[
          FbCollection(1, "Thurs", "Y1"),
        ]
      ]
    ],
  );
}

Column CompScienceClassY2() {
  return Column(children: [
    if (box.get(6) == 3) ...[
      if (dateController.class2.value == 1) ...[
        FbCollectionY2(1, "Mon", "Y2", "Com"),
      ] else if (dateController.class2.value == 2) ...[
        FbCollectionY2(1, "Tues", "Y2", "Com"),
      ] else if (dateController.class2.value == 3) ...[
        FbCollectionY2(1, "Wed", "Y2", "Com"),
      ] else if (dateController.class2.value == 4) ...[
        FbCollectionY2(1, "Thurs", "Y2", "Com"),
      ] else if (dateController.class2.value == 5) ...[
        FbCollectionY2(1, "Fri", "Y2", "Com"),
      ]
    ] else if (box.get(6) == 2) ...[
      if (dateController.class2.value == 1) ...[
        FbCollectionY2(1, "Mon", "Y2", "Sys"),
      ] else if (dateController.class2.value == 2) ...[
        FbCollectionY2(1, "Tue", "Y2", "Sys"),
      ] else if (dateController.class2.value == 3) ...[
        FbCollectionY2(1, "Wed", "Y2", "Sys"),
      ] else if (dateController.class2.value == 4) ...[
        FbCollectionY2(1, "Thurs", "Y2", "Com"),
      ] else if (dateController.class2.value == 5) ...[
        FbCollectionY2(1, "Fri", "Y2", "Com"),
      ]
    ]
  ]);
}

StreamBuilder<QuerySnapshot<Map<String, dynamic>>> FbCollectionY2(
    int grp, String day, String collection, String spc) {
  return StreamBuilder(
    stream: FirebaseFirestore.instance
        .collection(collection)
        .where("Grp", isEqualTo: grp)
        .where("day", isEqualTo: day)
        .where("spc", isEqualTo: spc)
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
        return Column(
          children: [
            Subjects1(
                module: grocery["module"],
                lecturer: grocery["lecturer"],
                loc: grocery["loc"],
                time: grocery["time"],
                id: grocery["id"]),
            SizedBox(height: 15),
          ],
        );
      }).toList());
    },
  );
}

StreamBuilder<QuerySnapshot<Map<String, dynamic>>> FbCollection(
    int grp, String day, String collection) {
  return StreamBuilder(
    stream: FirebaseFirestore.instance
        .collection(collection)
        .where("Grp", isEqualTo: grp)
        .where("day", isEqualTo: day)
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
        return Column(
          children: [
            Subjects1(
                module: grocery["module"],
                lecturer: grocery["lecturer"],
                loc: grocery["loc"],
                time: grocery["time"],
                id: grocery["id"]),
            SizedBox(height: 15),
          ],
        );
      }).toList());
    },
  );
}
