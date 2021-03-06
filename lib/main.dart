import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:searchbusiness/auth/signup/signup.dart';
import 'package:searchbusiness/firstTime/about.dart';
import 'package:searchbusiness/auth/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

Future<bool> seen() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool _seen = (pref.getBool('seen') ?? false);
  if (_seen) {
    return true;
  } else {
    pref.setBool('seen', true);
    return false;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = prefs.getBool("opened");
    if (seen == null) {
      Navigator.pop(context);
      prefs.setBool("opened", true);
      Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
      return true;
    }
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Starting()));
    return false;
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    checkFirstSeen();
  }

  @override
  Widget build(BuildContext context) {
    var screenh = MediaQuery.of(context).size.height;
    var screenw = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0xffC6FFF9),
      child: Column(
        children: [
          Image.asset(
            "assets/img/topart.png",
            alignment: Alignment.topLeft,
            height: screenh * 0.25,
            width: screenw,
            fit: BoxFit.fill,
          ),
          Center(
            heightFactor: 2,
            child: Column(
              children: [
                Image.asset(
                  "assets/img/logo.jpg",
                  alignment: Alignment.topLeft,
                  height: 150,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Starting extends StatefulWidget {
  Starting({Key key}) : super(key: key);

  @override
  _StartingState createState() => _StartingState();
}

class _StartingState extends State<Starting> {
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
            image: AssetImage("assets/img/homepage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: screenh * 0.061,
                  minWidth: screenw * 0.487,
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 29, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: screenh * 0.061,
                  minWidth: screenw * 0.487,
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup(),
                      ),
                    );
                  },
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(fontSize: 29, color: Colors.white),
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
