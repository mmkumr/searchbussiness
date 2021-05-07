// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:searchbusiness/auth/signup/signup.dart';
import 'package:searchbusiness/companies.dart';
import 'package:searchbusiness/widgets/bottomNavBar.dart';
import 'package:searchbusiness/widgets/drawer.dart';

class Interests {
  final int id;
  final String name;

  Interests({
    this.id,
    this.name,
  });
}

class UploadedFiles extends StatefulWidget {
  UploadedFiles({Key key}) : super(key: key);

  @override
  _UploadedFilesState createState() => _UploadedFilesState();
}

class _UploadedFilesState extends State<UploadedFiles> {
  final _formKey = GlobalKey<FormState>();
  String _selectedtype = 'b2b';
  String _chosenValue;
  bool value1 = false;
  bool value2 = false;
  List valuedd;
  List _section = [
    Interests(id: 1, name: "Startup"),
    Interests(id: 2, name: "Incubator"),
    Interests(id: 3, name: "Investers"),
    Interests(id: 4, name: "Mentor"),
  ];
  List _technology = [
    Interests(id: 1, name: "Robotics"),
    Interests(id: 2, name: "Embedded"),
    Interests(id: 3, name: "Tele-communication"),
    Interests(id: 4, name: "Computer Science"),
  ];
  List<Interests> _selectedSections = [];
  List<Interests> _selectedTechnologies = [];
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    var screenh = MediaQuery.of(context).size.height;
    var screenw = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: SidePanel(),
      body: Container(
        width: screenw,
        height: screenh,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: screenh * 0.8,
            width: screenw * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: SingleChildScrollView(
              child: Container(
                height: screenh * 0.75,
                child: ListView(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Uploaded Files",
                          style: TextStyle(
                            fontSize: screenw * 0.08,
                            color: Color(0xff6DFFF0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.file_present,
                        color: Color(0xff6DFFF0),
                        size: screenw * 0.3,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Pitch Deck:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6DFFF0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          height: screenh * 0.061,
                          minWidth: screenw * 0.487,
                          color: Color(0xff6DFFF0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Companies(),
                              ),
                            );
                          },
                          child: Text(
                            "Share Link",
                            style: TextStyle(
                              fontSize: screenw * 0.06,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Center(
                      child: Icon(
                        Icons.file_present,
                        color: Color(0xff6DFFF0),
                        size: screenw * 0.3,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Finacials:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6DFFF0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          height: screenh * 0.061,
                          minWidth: screenw * 0.487,
                          color: Color(0xff6DFFF0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Companies(),
                              ),
                            );
                          },
                          child: Text(
                            "Share Link",
                            style: TextStyle(
                              fontSize: screenw * 0.06,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Center(
                      child: Icon(
                        Icons.file_present,
                        color: Color(0xff6DFFF0),
                        size: screenw * 0.3,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Incorporation Certificate:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6DFFF0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          height: screenh * 0.061,
                          minWidth: screenw * 0.487,
                          color: Color(0xff6DFFF0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Companies(),
                              ),
                            );
                          },
                          child: Text(
                            "Share Link",
                            style: TextStyle(
                              fontSize: screenw * 0.06,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xff6DFFF0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Signup(),
            ),
          );
        },
      ),
      bottomNavigationBar: BNav(
        scaffoldKey: _scaffoldKey,
      ),
    );
  }
}
