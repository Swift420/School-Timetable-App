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

//Group -3
//Year -4
//course - 5
//specialization -6

Column InformaticsY2() {
  return Column(
    children: [
      if (box.get(3) == 1 || box.get(3) == 2) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2SC(1, "Mon", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2SC(1, "Tue", "Y2Inf", "info", "Theory"),
          //FbCollectionY2SC(5, "Tue", "Y2Inf", "info", "Pract"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2SC(2, "Wed", "Y2Inf", "info", "Pract"),
          FbCollectionY2SC(1, "Wed", "Y2Inf", "info", "Pract"),
          FbCollectionY2SC(1, "Wed", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2SC(1, "Thurs", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 5) ...[
          // FbCollectionY2SC(3, "Fri", "Y2Inf", "info", "Pract"),
          FbCollectionY2SC(1, "Fri", "Y2Inf", "info", "Theory"),
        ]
      ] else if (box.get(3) == 3 || box.get(3) == 4) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2SC(1, "Mon", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2SC(1, "Tue", "Y2Inf", "info", "Theory"),
          //FbCollectionY2SC(5, "Tue", "Y2Inf", "info", "Pract"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2SC(2, "Wed", "Y2Inf", "info", "Pract"),
          //FbCollectionY2SC(1, "Wed", "Y2Inf", "info", "Pract"),
          FbCollectionY2SC(1, "Wed", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2SC(1, "Thurs", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 5) ...[
          FbCollectionY2SC(3, "Fri", "Y2Inf", "info", "Pract"),
          FbCollectionY2SC(1, "Fri", "Y2Inf", "info", "Theory"),
        ]
      ] else if (box.get(3) == 5 || box.get(3) == 6) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2SC(1, "Mon", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2SC(1, "Tue", "Y2Inf", "info", "Theory"),
          FbCollectionY2SC(5, "Tue", "Y2Inf", "info", "Pract"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2SC(2, "Wed", "Y2Inf", "info", "Pract"),
          // FbCollectionY2SC(1, "Wed", "Y2Inf", "info", "Pract"),
          FbCollectionY2SC(1, "Wed", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2SC(1, "Thurs", "Y2Inf", "info", "Theory"),
        ] else if (dateController.class2.value == 5) ...[
          FbCollectionY2SC(1, "Fri", "Y2Inf", "info", "Theory"),
        ]
      ]
    ],
  );
}

Column CompScienceClassY2() {
  return Column(children: [
    if (box.get(6) == 1) ...[
      if (box.get(3) == 1 || (box.get(3) == 2)) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2(1, "Mon", "Y2", "software"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2(1, "Tue", "Y2", "software"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2(1, "Wed", "Y2", "software"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2(1, "Thurs", "Y2", "software"),
        ] else if (dateController.class2.value == 5) ...[
          FbCollectionY2(1, "Fri", "Y2", "software"),
        ]
      ] else if (box.get(3) == 3 || (box.get(3) == 4)) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2(1, "Mon", "Y2", "software"),
          FbCollectionY2(3, "Mon", "Y2", "software"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2(1, "Tue", "Y2", "software"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2(2, "Wed", "Y2", "software"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2(1, "Thurs", "Y2", "software"),
        ] else if (dateController.class2.value == 5) ...[
          FbCollectionY2(2, "Fri", "Y2", "software"),
        ]
      ],
    ] else if (box.get(6) == 2) ...[
      if (box.get(3) == 1 || box.get(3) == 2) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2SC(1, "Mon", "Y2CS", "sys", "Pract"),
          FbCollectionY2SC(1, "Mon", "Y2CS", "sys", "Theory"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2SC(1, "Tue", "Y2CS", "sys", "Theory"),
          FbCollectionY2SC(1, "Tue", "Y2CS", "sys", "Pract"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2SC(1, "Wed", "Y2CS", "sys", "Theory"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2SC(1, "Thurs", "Y2CS", "sys", "Theory"),
          FbCollectionY2SC(1, "Thurs", "Y2CS", "sys", "Pract"),
        ] else if (dateController.class2.value == 5) ...[
          FbCollectionY2SC(1, "Fri", "Y2CS", "sys", "Pract"),
        ]
      ] else if (box.get(3) == 3 || box.get(3) == 4) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2SC(1, "Mon", "Y2CS", "sys", "Theory"),
          FbCollectionY2SC(3, "Mon", "Y2CS", "sys", "Pract"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2SC(1, "Tue", "Y2CS", "sys", "Theory"),
          //FbCollectionY2SC(1, "Tue", "Y2CS", "sys", "Pract"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2SC(1, "Wed", "Y2CS", "sys", "Theory"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2SC(1, "Thurs", "Y2CS", "sys", "Theory"),
          // FbCollectionY2SC(1, "Thurs", "Y2CS", "sys", "Pract"),
        ] else if (dateController.class2.value == 5) ...[
          // FbCollectionY2SC(1, "Fri", "Y2CS", "sys", "Pract"),
        ]
      ]
    ] else if (box.get(6) == 3) ...[
      if (box.get(3) == 1 || box.get(3) == 2) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2SC(1, "Mon", "Y2CS", "sys", "Pract"),
          FbCollectionY2SC(1, "Mon", "Y2CS", "sys", "Theory"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2SC(1, "Tue", "Y2CS", "sys", "Theory"),
          FbCollectionY2SC(1, "Tue", "Y2CS", "com", "Theory"),
          FbCollectionY2SC(1, "Tue", "Y2CS", "com", "Pract"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2SC(1, "Wed", "Y2CS", "sys", "Theory"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2SC(1, "Thurs", "Y2CS", "sys", "Theory"),
          FbCollectionY2SC(1, "Thurs", "Y2CS", "com", "Pract"),
        ] else if (dateController.class2.value == 5) ...[
          FbCollectionY2SC(1, "Fri", "Y2CS", "sys", "Pract"),
          FbCollectionY2SC(1, "Fri", "Y2CS", "com", "Pract"),
        ]
      ] else if (box.get(3) == 3 || box.get(3) == 4) ...[
        if (dateController.class2.value == 1) ...[
          FbCollectionY2SC(1, "Mon", "Y2CS", "sys", "Theory"),
          FbCollectionY2SC(3, "Mon", "Y2CS", "sys", "Pract"),
        ] else if (dateController.class2.value == 2) ...[
          FbCollectionY2SC(1, "Tue", "Y2CS", "sys", "Theory"),
          FbCollectionY2SC(1, "Tue", "Y2CS", "com", "Theory"),
        ] else if (dateController.class2.value == 3) ...[
          FbCollectionY2SC(3, "Wed", "Y2CS", "com", "Pract"),
          FbCollectionY2SC(1, "Wed", "Y2CS", "sys", "Theory"),
        ] else if (dateController.class2.value == 4) ...[
          FbCollectionY2SC(1, "Thurs", "Y2CS", "sys", "Theory"),
          FbCollectionY2SC(1, "Thurs", "Y2CS", "com", "Pract"),
        ] else if (dateController.class2.value == 5) ...[
          //FbCollectionY2SC(1, "Fri", "Y2CS", "sys", "Pract"),
        ]
      ]
    ]
  ]);
}

StreamBuilder<QuerySnapshot<Map<String, dynamic>>> FbCollectionY2SC(
    int grp, String day, String collection, String spc, String mode) {
  return StreamBuilder(
    stream: FirebaseFirestore.instance
        .collection(collection)
        .where("Grp", isEqualTo: grp)
        .where("day", isEqualTo: day)
        .where("spc", isEqualTo: spc)
        .where("mode", isEqualTo: mode)
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
              id: grocery["id"],
              col: grocery["color"],
              timeBefore: grocery["td"],
            ),
            SizedBox(height: 15),
          ],
        );
      }).toList());
    },
  );
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
              id: grocery["id"],
              col: grocery["color"],
              timeBefore: grocery["td"],
            ),
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
              id: grocery["id"],
              col: grocery["color"],
              timeBefore: grocery["td"],
            ),
            SizedBox(height: 15),
          ],
        );
      }).toList());
    },
  );
}
