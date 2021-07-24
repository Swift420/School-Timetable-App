import 'package:flutter/material.dart';

class LecturerScreen extends StatefulWidget {
  const LecturerScreen({Key? key}) : super(key: key);

  @override
  _LecturerScreenState createState() => _LecturerScreenState();
}

class _LecturerScreenState extends State<LecturerScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(image: AssetImage("assets/images/t1.png")),
        Image(image: AssetImage("assets/images/t2.png")),
        Image(image: AssetImage("assets/images/t3.png")),
        Image(image: AssetImage("assets/images/t4.png")),
      ],
    );
  }
}
