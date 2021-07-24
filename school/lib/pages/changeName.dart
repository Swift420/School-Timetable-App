import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:school/screens/Settings.dart';

class ChangeNameStudent extends StatefulWidget {
  const ChangeNameStudent({Key? key}) : super(key: key);

  @override
  _ChangeNameStudentState createState() => _ChangeNameStudentState();
}

class _ChangeNameStudentState extends State<ChangeNameStudent> {
  var box = Hive.box("studentBox1");
  int selectedValue = 1;

  TextEditingController NameController = TextEditingController();
  TextEditingController NumController = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  var _formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/wallp.jpeg"))
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.purple,
              //     Colors.blue,
              //   ],
              //),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 46,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Edit Name or Student Number",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextMethod(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded TextMethod() {
    return Expanded(
      flex: 5,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: NameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name can't be Empty";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color(0xFFe7edeb),
                    labelText: "Name",
                    hintText: box.get(1),
                    prefixIcon: Icon(Icons.account_circle_outlined),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Form(
                  key: _formKey2,
                  child: TextFormField(
                    controller: NumController,
                    validator: (value) {
                      if (value!.length < 9) {
                        return "Student Number can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xFFe7edeb),
                      labelText: "Student Number",
                      hintText: box.get(2),
                      prefixIcon: Icon(Icons.perm_identity),
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 9,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              // Radio Buttons

              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //print(DateTime.now().weekday);
                    //print(selectedValue);

                    setState(() {
                      _formKey.currentState!.validate()
                          ? box.put(1, NameController.text)
                          : _formKey.currentState!.validate();
                      _formKey2.currentState!.validate()
                          ? box.put(2, NumController.text)
                          : _formKey2.currentState!.validate();

                      if (_formKey.currentState!.validate() &&
                          _formKey2.currentState!.validate() == true) {
                        box.put(1, NameController.text);
                        box.put(2, NumController.text);

                        if (box.get(1) != null && box.get(2) != null) {
                          Navigator.pop(context);
                        }
                      }
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text("Save"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
