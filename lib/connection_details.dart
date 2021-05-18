import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/widgets/drawer.dart';
import 'package:flutter/foundation.dart';

class ConnectionDetails extends StatefulWidget {
  final name;
  ConnectionDetails({Key key, @required this.name}) : super(key: key);

  @override
  _ConnectionDetailsState createState() => _ConnectionDetailsState();
}

class _ConnectionDetailsState extends State<ConnectionDetails> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screenh = MediaQuery.of(context).size.height;
    var screenw = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
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
                  height: screenh * 0.8,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          widget.name,
                          style: TextStyle(
                            color: Color(0xff6DFFF0),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
