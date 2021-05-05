import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/auth/signup/signup.dart';
import 'package:searchbusiness/auth/signup/user.dart';

class Companies extends StatefulWidget {
  Companies({Key key}) : super(key: key);

  @override
  _CompaniesState createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
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
        child: SingleChildScrollView(
          child: Container(
            height: screenh,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Co-founder And CEO'),
                      subtitle: Text(
                        "May 2007 - Jun 2018\nBerhampur, Odisha, India",
                      ),
                      isThreeLine: true,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Technical Head'),
                      subtitle: Text(
                        "Jan 2007 - Nov 2018\nJamshedpur, Jharkhand, India",
                      ),
                      isThreeLine: true,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Co-founder And CEO'),
                      subtitle: Text(
                        "May 2007 - Jun 2018\nBerhampur, Odisha, India",
                      ),
                      isThreeLine: true,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Co-founder And CEO'),
                      subtitle: Text(
                        "May 2007 - Jun 2018\nBerhampur, Odisha, India",
                      ),
                      isThreeLine: true,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Co-founder And CEO'),
                      subtitle: Text(
                        "May 2007 - Jun 2018\nBerhampur, Odisha, India",
                      ),
                      isThreeLine: true,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Co-founder And CEO'),
                      subtitle: Text(
                        "May 2007 - Jun 2018\nBerhampur, Odisha, India",
                      ),
                      isThreeLine: true,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Co-founder And CEO'),
                      subtitle: Text(
                        "May 2007 - Jun 2018\nBerhampur, Odisha, India",
                      ),
                      isThreeLine: true,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Co-founder And CEO'),
                      subtitle: Text(
                        "May 2007 - Jun 2018\nBerhampur, Odisha, India",
                      ),
                      isThreeLine: true,
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
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Co-founder And CEO'),
                      subtitle: Text(
                        "May 2007 - Jun 2018\nBerhampur, Odisha, India",
                      ),
                      isThreeLine: true,
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
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Signup(),
                ));
          });
        },
      ),
    );
  }
}
