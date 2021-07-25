import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LecturerScreen extends StatefulWidget {
  const LecturerScreen({Key? key}) : super(key: key);

  @override
  _LecturerScreenState createState() => _LecturerScreenState();
}

class _LecturerScreenState extends State<LecturerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeTableMethod("timetables"),
    );
  }

  StreamBuilder<QuerySnapshot<Map<String, dynamic>>> TimeTableMethod(
      String urlImg) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection(urlImg).snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
          //CircularProgressIndicator();
        }

        return ListView(
            children: snapshot.data!.docs.map((grocery) {
          return Column(
            children: [
              Container(
                child: CachedNetworkImage(
                  imageUrl: grocery["imgUrl"],
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              )
            ],
          );
        }).toList());
      },
    );
  }
}
