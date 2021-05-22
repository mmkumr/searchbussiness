import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/auth/signup/signup.dart';
import 'package:searchbusiness/widgets/bottomNavBar.dart';
import 'package:searchbusiness/widgets/drawer.dart';
import 'package:flutter/foundation.dart';

class InvestorDetails extends StatefulWidget {
  final name;
  InvestorDetails({Key key, @required this.name}) : super(key: key);

  @override
  _InvestorDetailsState createState() => _InvestorDetailsState();
}

class _InvestorDetailsState extends State<InvestorDetails> {
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Organisation type: Incubator",
                          style: TextStyle(
                            fontSize: screenw * 0.04,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Technologies: ALL",
                          style: TextStyle(
                            fontSize: screenw * 0.04,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Sector: Tele-communication, Robotics",
                          style: TextStyle(
                            fontSize: screenw * 0.04,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Address: CIIE, IIMA new campus,"
                          "IIMA, Sargam Marg,"
                          "Vastrapur, Ahmedabad, Gujarat 380015, India.",
                          style: TextStyle(
                            fontSize: screenw * 0.04,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "About: 	IIM Ahmedabad's Centre for Innovation Incubation and Entrepreneurship (CIIE) is one of India's leading centres catalyzing the entrepreneurship ecosystem in the country through its various interventions and initiatives.",
                          style: TextStyle(
                            fontSize: screenw * 0.04,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Color(0xff6DFFF0),
                        height: 50,
                        minWidth: screenw * 0.5,
                        child: Text("Pitch"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "*Some details of this organisation is hidden to avoid spamming. The admin of this organisation will contact you, if he/she is interested in your pitch.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
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
      ),
    );
  }
}
