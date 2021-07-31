import 'package:flutter/material.dart';
import 'package:school/controllers/dateController.dart';
import 'package:school/controllers/otherController.dart';
import 'package:school/main.dart';
import 'package:file/local.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school/methods/subjectMethod.dart';
import 'package:school/methods/subjectMethod2.dart';

var box = Hive.box("studentBox1");
final DateController dateController = Get.find();
final OtherDateController otherDateController = Get.find();

//Group -3
//Year -4
//course - 5

Column UltimateColumn() {
  return Column(
    children: [
      if (box.get(4) == 1 && box.get(5) == 1) ...[
        CompScienceClassY1(),
      ] else if (box.get(4) == 2 && box.get(5) == 1) ...[
        CompScienceClassY1(),
      ] else if (box.get(4) == 3 && box.get(5) == 1) ...[
        CompScienceClassY1(),
      ]
    ],
  );
}
