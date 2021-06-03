import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/auth/signup/user_type.dart';
import 'package:searchbusiness/companies.dart';
import 'package:searchbusiness/widgets/bottomNavBar.dart';
import 'package:searchbusiness/widgets/drawer.dart';

class UserForms extends StatefulWidget {
  UserForms({Key key}) : super(key: key);

  @override
  _UserFormsState createState() => _UserFormsState();
}

class _UserFormsState extends State<UserForms> {
  bool value1 = false;
  bool value2 = false;
  List valuedd;
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
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Forms",
                      style: TextStyle(
                        fontSize: screenw * 0.08,
                        color: Color(0xff6DFFF0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    height: screenh * 0.7,
                    child: ListView(
                      children: [
                        Center(
                          child: Icon(
                            Icons.article_outlined,
                            color: Color(0xff6DFFF0),
                            size: screenw * 0.3,
                          ),
                        ),
                        Center(
                          child: Text(
                            "User Form",
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
                            Icons.article_outlined,
                            color: Color(0xff6DFFF0),
                            size: screenw * 0.3,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Investor Form",
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
                            Icons.article_outlined,
                            color: Color(0xff6DFFF0),
                            size: screenw * 0.3,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Growth Form",
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
                                "Fill the form",
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
              ],
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
