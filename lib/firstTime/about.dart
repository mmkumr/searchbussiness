import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/firstTime/sevices.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
              child: Column(
                children: [
                  Text(
                    "ABOUT US",
                    style: TextStyle(
                        color: Color(0xff50D4FF),
                        fontSize: screenw * 0.08,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: screenw * 0.8,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenw * 0.04,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                margin: EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                    color: Color(0xff50D4FF), shape: BoxShape.circle),
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
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: MaterialButton(
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Services()));
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
