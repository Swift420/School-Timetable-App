import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school/controllers/dateController.dart';
import 'package:school/controllers/otherController.dart';
import 'package:school/main.dart';
import 'package:file/local.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school/methods/subjectMethod.dart';

var box = Hive.box("studentBox1");
final DateController dateController = Get.find();
final OtherDateController otherDateController = Get.find();

//Group -3
//Year -4
//course - 5

Column ChangingClassMethod1() {
  return Column(
    children: [
      //Computer Science Year 1
      if (box.get(3) == 1) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ],
      ] else if (box.get(3) == 2) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ] else if (box.get(3) == 3) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party a",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ] else if (box.get(3) == 4) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party a",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ] else if (box.get(3) == 5) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party a",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ] else if (box.get(3) == 6) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party a",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ]
    ],
  );
}

Column ChangingClassMethod2() {
  return Column(
    children: [
      // Computer Science Year 2
      if (box.get(3) == 1) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ],
      ] else if (box.get(3) == 2) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ] else if (box.get(3) == 3) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party a",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ] else if (box.get(3) == 4) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party a",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ] else if (box.get(3) == 5) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party a",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ] else if (box.get(3) == 6) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 6) ...[
          //Saturday
          Subjects1(
              module: "Party a",
              lecturer: "Host: you",
              loc: "At your house",
              time: "19:00"),
        ] else if (dateController.class2.value == 7) ...[
          //Sunday
          Subjects1(
              module: "Go to Church :)", lecturer: "", loc: "", time: "07:30"),
          SizedBox(
            height: 15,
          ),
        ],
      ]
    ],
  );
}

Column ChangingClassMethod3() {
  return Column(
    children: [
      // Computer Science Year 3
      if (box.get(3) == 1) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ],
      ] else if (box.get(3) == 2) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ],
      ] else if (box.get(3) == 3) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ],
      ] else if (box.get(3) == 4) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ],
      ] else if (box.get(3) == 5) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ],
      ] else if (box.get(3) == 6) ...[
        if (dateController.class2.value == 1) ...[
          // Monday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 2) ...[
          //Tuesday
          Subjects1(
              module: "Information Systems Security",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Stats",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Programming",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 3) ...[
          //Wednesday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ] else if (dateController.class2.value == 4) ...[
          //Thursday
          Subjects1(
              module: "Programming II - Practical",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks - Theory",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems - Theory",
              lecturer: "Ms Jovita",
              loc: "Auditorium 3",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - Practical",
              lecturer: "Ms Jovita",
              loc: "Lab 6",
              time: "13:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Applied Statistics and Probability",
              lecturer: "Mr Andrew",
              loc: "Auditorium South",
              time: "15:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operating Systems - PRACTICAL",
              lecturer: "Ms Jovita",
              loc: "Auditorium 2",
              time: "16:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "ISS - Theory",
              lecturer: "Ms Mbasiva",
              loc: "Auditorium 3",
              time: "15:00"),
        ] else if (dateController.class2.value == 5) ...[
          //Friday
          Subjects1(
              module: "Programming II",
              lecturer: "Mr Simon",
              loc: "Lab 6",
              time: "07:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Data Networks",
              lecturer: "Ms Ankome",
              loc: "Lab 12",
              time: "08:30"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
          SizedBox(
            height: 15,
          ),
          Subjects1(
              module: "Operationg Systems",
              lecturer: "Ms Jovita",
              loc: "Auditorium South",
              time: "10:00"),
        ],
      ]
    ],
  );
}
