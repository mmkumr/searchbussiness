// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/auth/signup/user_type.dart';
import 'package:searchbusiness/forms.dart';
import 'package:searchbusiness/graph.dart';
import 'package:searchbusiness/uploaded_files.dart';
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

class CompanyDetails extends StatefulWidget {
  final userType;
  CompanyDetails({this.userType});

  @override
  _CompanyDetailsState createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String _chosenValue;
  bool value1 = false;
  bool value2 = false;
  List valuedd;
  @override
  Widget build(BuildContext context) {
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          onTap: () {},
                          leading: Text(
                            "Email:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff6DFFF0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: Text("care@company.com"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          onTap: () {},
                          leading: Text(
                            "Phone:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff6DFFF0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: Text("8337908779"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          onTap: () {},
                          leading: Text(
                            "Location:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff6DFFF0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: Text(
                              "Co-operative Colony lane 3rd, Berhampur, Odisha"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          onTap: () {},
                          leading: Text(
                            "Section:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff6DFFF0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: Text("Startup"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18, top: 8),
                      child: Text(
                        "Current Growth Stage:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6DFFF0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: DropdownButton<String>(
                        value: _chosenValue,
                        //elevation: 5,
                        style: TextStyle(
                          color: Colors.black,
                        ),

                        items: <String>[
                          'Prototype',
                          'Funded',
                          'Incubated',
                          'Devloped',
                          'Approching to market',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text(
                          "Please choose your growth stage",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenw * 0.03,
                              fontWeight: FontWeight.w600),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            height: screenh * 0.061,
                            minWidth: screenw * 0.487,
                            color: Color(0xff6DFFF0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Graph(),
                                ),
                              );
                            },
                            child: Text(
                              "Graphs",
                              style: TextStyle(
                                fontSize: screenw * 0.06,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            height: screenh * 0.061,
                            minWidth: screenw * 0.487,
                            color: Color(0xff6DFFF0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserForms(),
                                ),
                              );
                            },
                            child: Text(
                              "Forms",
                              style: TextStyle(
                                fontSize: screenw * 0.06,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            height: screenh * 0.061,
                            minWidth: screenw * 0.487,
                            color: Color(0xff6DFFF0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UploadedFiles(),
                                ),
                              );
                            },
                            child: Text(
                              "Files",
                              style: TextStyle(
                                fontSize: screenw * 0.06,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
              builder: (context) => UserType(),
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

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
