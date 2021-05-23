import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/Connected.dart';
import 'package:searchbusiness/connections.dart';
import 'package:searchbusiness/companies.dart';
import 'package:searchbusiness/pitch.dart';

class SidePanel extends StatefulWidget {
  SidePanel({Key key}) : super(key: key);

  @override
  _SidePanelState createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff6DFFF0),
            ),
            accountName: Text(
              "John Wick",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            accountEmail: Text(
              "doglover@gmail.com",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Companies(),
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.business),
              title: Text(
                "24 Comapnies",
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pitch(),
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.send_and_archive),
              title: Text(
                "Pitch ideas",
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Connections(),
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.person_search),
              title: Text(
                "Connections",
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Connected(),
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.send_and_archive),
              title: Text(
                "Connected People",
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.perm_identity),
              title: Text(
                "Update Profile",
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Logout",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
