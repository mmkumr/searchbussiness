import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/main.dart';

class EndIntro extends StatefulWidget {
  EndIntro({Key key}) : super(key: key);

  @override
  _EndIntroState createState() => _EndIntroState();
}

class _EndIntroState extends State<EndIntro> {
  @override
  Widget build(BuildContext context) {
    var screenh = MediaQuery.of(context).size.height;
    var screenw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "LETS GET STARTED",
                      style: TextStyle(
                          color: Color(0xff50D4FF),
                          fontSize: screenw * 0.08,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffC6FFF9),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 20,
                width: 20,
                margin: EdgeInsets.only(right: 0.0),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                width: 20,
                margin: EdgeInsets.only(right: 0.0),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                width: 20,
                margin: EdgeInsets.only(right: 0.0),
                decoration: BoxDecoration(
                    color: Color(0xff50D4FF), shape: BoxShape.circle),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: MaterialButton(
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Starting()));
                  },
                  color: Color(0xff50D4FF),
                  shape: CircleBorder(),
                  child: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
