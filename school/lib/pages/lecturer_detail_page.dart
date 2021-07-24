import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class LecturerDetail extends StatefulWidget {
  final String id;
  final String name;
  final String type;

  final String img;
  final String phone;
  final String email;
  final String occupat;
  const LecturerDetail(
      {Key? key,
      required this.id,
      required this.name,
      required this.img,
      required this.phone,
      required this.email,
      required this.type,
      required this.occupat})
      : super(key: key);

  @override
  _LecturerDetailState createState() => _LecturerDetailState();
}

class _LecturerDetailState extends State<LecturerDetail> {
  String _phone = "";
  Future<void>? _launched;
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void>? _launched2;
  Future<void> _makeEmail(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    String _phone = widget.name;
    String ad = '';
    String _email = "mailto:${widget.email}?subject=${ad}&body=${ad}";
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  child: Card(
                    elevation: 2,
                    child: Hero(
                      tag: widget.id.toString(),
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(widget.img),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  widget.occupat,
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_outlined,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(widget.type,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            letterSpacing: 0.5,
                          )),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white54,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(widget.phone,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            letterSpacing: 0.5,
                          )),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white54,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _launched = _makePhoneCall('tel:$_phone');
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(widget.name,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            letterSpacing: 0.5,
                          )),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white54,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  _makeEmail(_email);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(widget.email,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            letterSpacing: 0.5,
                          )),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white54,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
