// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbusiness/companies.dart';
import 'package:searchbusiness/uploaded_files.dart';
import 'package:flutter/foundation.dart';

class BNav extends StatefulWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  BNav({@required this.scaffoldKey});

  @override
  _BNavState createState() => _BNavState();
}

class _BNavState extends State<BNav> {
  @override
  Widget build(BuildContext context) {
    var screenh = MediaQuery.of(context).size.height;
    var screenw = MediaQuery.of(context).size.width;
    return Container(
      height: screenh * 0.13,
      color: Color(0xff6DFFF0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.file_present,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UploadedFiles(),
                      ),
                    );
                  },
                ),
                Text(
                  "My Files",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.more_vert_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    widget.scaffoldKey.currentState.openDrawer();
                  },
                ),
                Text(
                  "More",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.account_tree,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Companies(),
                      ),
                    );
                  },
                ),
                Text(
                  "Companies",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
