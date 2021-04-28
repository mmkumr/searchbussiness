import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  @override
  Widget build(BuildContext context) {
    var screenh = MediaQuery.of(context).size.height;
    var screenw = MediaQuery.of(context).size.width;
    return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Select the user category you belong.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: screenw * 0.05),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        children: [
                          Checkbox(
                            value: value1,
                            onChanged: (bool value1) {
                              setState(() {
                                this.value1 = value1;
                              });
                            },
                          ),
                          InkWell(
                            onTap: () {
                              if (value1) {
                                setState(() {
                                  value1 = false;
                                });
                              } else {
                                setState(() {
                                  value1 = true;
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text("Type1"),
                            ),
                          ),
                          Checkbox(
                            value: value2,
                            onChanged: (bool value2) {
                              setState(() {
                                this.value2 = value2;
                              });
                            },
                          ),
                          InkWell(
                            onTap: () {
                              if (value2) {
                                setState(() {
                                  value2 = false;
                                });
                              } else {
                                setState(() {
                                  value2 = true;
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text("Type2"),
                            ),
                          ),
                          Checkbox(
                            value: value3,
                            onChanged: (bool value3) {
                              setState(() {
                                this.value3 = value3;
                              });
                            },
                          ),
                          InkWell(
                            onTap: () {
                              if (value3) {
                                setState(() {
                                  value3 = false;
                                });
                              } else {
                                setState(() {
                                  value3 = true;
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text("Type3"),
                            ),
                          ),
                          Checkbox(
                            value: value4,
                            onChanged: (bool value4) {
                              setState(() {
                                this.value4 = value4;
                              });
                            },
                          ),
                          InkWell(
                            onTap: () {
                              if (value4) {
                                setState(() {
                                  value4 = false;
                                });
                              } else {
                                setState(() {
                                  value4 = true;
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text("Type4"),
                            ),
                          ),
                          Checkbox(
                            value: value5,
                            onChanged: (bool value5) {
                              setState(() {
                                this.value5 = value5;
                              });
                            },
                          ),
                          InkWell(
                            onTap: () {
                              if (value5) {
                                setState(() {
                                  value5 = false;
                                });
                              } else {
                                setState(() {
                                  value5 = true;
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text("Type5"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MaterialButton(
                              height: 50,
                              minWidth: 200,
                              color: Colors.lightBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    fontSize: 29, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
