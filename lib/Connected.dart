import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:searchbusiness/auth/signup/user_type.dart';
import 'package:searchbusiness/widgets/bottomNavBar.dart';
import 'package:searchbusiness/widgets/drawer.dart';

class Filters {
  final int id;
  final String name;

  Filters({
    this.id,
    this.name,
  });
}

class Connected extends StatefulWidget {
  Connected({Key key}) : super(key: key);

  @override
  _ConnectedState createState() => _ConnectedState();
}

class _ConnectedState extends State<Connected> {
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
          child: Column(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenh * 0.85,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        String currentStatus, userType, name;
                        if (index % 2 == 0) {
                          currentStatus = "Full Stack Developer.";
                          userType =
                              "Mentor(4), Startup Founder(1), Incubator(8)";
                          name = "Naruto";
                        } else {
                          currentStatus =
                              "Searching for Technical head. Who knows Python Programming.";
                          userType = "Startup Founder(3)";
                          name = "Satish";
                        }
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Card(
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListTile(
                                  onTap: () {},
                                  leading: FlutterLogo(size: 72.0),
                                  title: Text(name),
                                  subtitle: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Current Status: ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(currentStatus,
                                                  softWrap: true,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "About: ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Flexible(
                                              child: Text(userType,
                                                  softWrap: true,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  isThreeLine: true,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
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
      ),
    );
  }
}
