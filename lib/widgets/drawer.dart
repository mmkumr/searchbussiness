import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/companies.dart';

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
            accountName: Text("John Wick"),
            accountEmail: Text("doglover@gmail.com"),
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
