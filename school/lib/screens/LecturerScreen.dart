import 'package:flutter/material.dart';
import 'package:school/constants/dataJson.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school/pages/lecturer_detail_page.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 115.0),
                    child: Text(
                      "FCI Society",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
                children: List.generate(dataItems.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => LecturerDetail(
                                id: dataItems[index]['id'].toString(),
                                name: dataItems[index]['name'],
                                img: dataItems[index]['img'],
                                phone: dataItems[index]['price'].toString(),
                                email: dataItems[index]['email'].toString(),
                                type: dataItems[index]['code'],
                                occupat: dataItems[index]['Occup'],
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  child: Container(
                    child: Card(
                      color: Color(0xFF3d3d3d),
                      elevation: 2,
                      child: Column(
                        children: [
                          Hero(
                            tag: dataItems[index]['id'].toString(),
                            child: Container(
                              width: (size.width - 16) / 2,
                              height: (size.width - 16) / 2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: NetworkImage(dataItems[index]['img']),
                                fit: BoxFit.cover,
                              )),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            dataItems[index]['code'],
                            style: GoogleFonts.roboto(
                              //fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
