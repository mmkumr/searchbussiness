// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:searchbusiness/companies.dart';

class Interests {
  final int id;
  final String name;

  Interests({
    this.id,
    this.name,
  });
}

class User extends StatefulWidget {
  final userType;
  User({this.userType});

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  final _formKey = GlobalKey<FormState>();
  String _selectedtype = 'b2b';
  String _chosenValue;
  bool value1 = false;
  bool value2 = false;
  List valuedd;
  List _section = [
    Interests(id: 1, name: "Startup"),
    Interests(id: 2, name: "Incubator"),
    Interests(id: 3, name: "Investers"),
    Interests(id: 4, name: "Mentor"),
  ];
  List _technology = [
    Interests(id: 1, name: "Robotics"),
    Interests(id: 2, name: "Embedded"),
    Interests(id: 3, name: "Tele-communication"),
    Interests(id: 4, name: "Computer Science"),
  ];
  List<Interests> _selectedSections = [];
  List<Interests> _selectedTechnologies = [];
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.userType,
                    style: TextStyle(
                      color: Color(0xff6DFFF0),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: screenw * 0.65,
                    height: screenh * 0.7,
                    color: Colors.white,
                    child: Form(
                      key: _formKey,
                      child: ListView(
                        children: [
                          TextFormField(
                            //controller: _name,
                            decoration: InputDecoration(
                              fillColor: Color(0xff6DFFF0),
                              hintText: "Full Name",
                              labelText: "Full Name",
                              labelStyle: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DFFF0),
                              )),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "The name field cannot be empty";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            //controller: _name,
                            decoration: InputDecoration(
                              fillColor: Color(0xff6DFFF0),
                              hintText: "Email",
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DFFF0),
                              )),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "The name field cannot be empty";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            //controller: _name,
                            decoration: InputDecoration(
                              fillColor: Color(0xff6DFFF0),
                              hintText: "Field3",
                              labelText: "Field3",
                              labelStyle: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DFFF0),
                              )),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "The name field cannot be empty";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            //controller: _name,
                            decoration: InputDecoration(
                              fillColor: Color(0xff6DFFF0),
                              hintText: "Field4",
                              labelText: "Field4",
                              labelStyle: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DFFF0),
                              )),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "The name field cannot be empty";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            //controller: _name,
                            decoration: InputDecoration(
                              fillColor: Color(0xff6DFFF0),
                              hintText: "Field5",
                              labelText: "Field5",
                              labelStyle: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DFFF0),
                              )),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "The name field cannot be empty";
                              }
                              return null;
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              "User Type:",
                              style: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          RadioListTile(
                            title: Text('B2B'),
                            value: "b2b",
                            groupValue: _selectedtype,
                            onChanged: (value) {
                              setState(() {
                                _selectedtype = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text('B2C'),
                            value: "b2c",
                            groupValue: _selectedtype,
                            onChanged: (value) {
                              setState(() {
                                _selectedtype = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text('B2B2C'),
                            value: "b2b2c",
                            groupValue: _selectedtype,
                            onChanged: (value) {
                              setState(() {
                                _selectedtype = value;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              "Interests:",
                              style: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          MultiSelectDialogField(
                            buttonText: Text("Section"),
                            title: Text("Sections"),
                            buttonIcon: Icon(
                              Icons.arrow_drop_down_circle,
                              color: Color(0xff6DFFF0),
                            ),
                            items: _section
                                .map((e) => MultiSelectItem(e, e.name))
                                .toList(),
                            listType: MultiSelectListType.CHIP,
                            onConfirm: (values) {
                              _selectedSections = values;
                            },
                          ),
                          MultiSelectDialogField(
                            buttonText: Text("Technology"),
                            title: Text("Technolgies"),
                            buttonIcon: Icon(
                              Icons.arrow_drop_down_circle,
                              color: Color(0xff6DFFF0),
                            ),
                            items: _technology
                                .map((e) => MultiSelectItem(e, e.name))
                                .toList(),
                            listType: MultiSelectListType.CHIP,
                            onConfirm: (values) {
                              _selectedTechnologies = values;
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              "Growth stage:",
                              style: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          DropdownButton<String>(
                            value: _chosenValue,
                            //elevation: 5,
                            style: TextStyle(
                              color: Colors.black,
                            ),

                            items: <String>[
                              'Prototype',
                              'Funded',
                              'Incubated',
                              'Devloped',
                              'Approching to market',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "Please choose your growth stage",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenw * 0.03,
                                  fontWeight: FontWeight.w600),
                            ),
                            onChanged: (String value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              "Upload the below files:",
                              style: TextStyle(
                                color: Color(0xff6DFFF0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Color(0xff6DFFF0),
                              )),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MaterialButton(
                                      height: screenh * 0.061,
                                      minWidth: screenw * 0.487,
                                      color: Color(0xff6DFFF0),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Companies(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Pitch Deck",
                                        style: TextStyle(
                                          fontSize: screenw * 0.04,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MaterialButton(
                                      height: screenh * 0.061,
                                      minWidth: screenw * 0.487,
                                      color: Color(0xff6DFFF0),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Companies(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Finacials",
                                        style: TextStyle(
                                          fontSize: screenw * 0.04,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MaterialButton(
                                      height: screenh * 0.061,
                                      minWidth: screenw * 0.487,
                                      color: Color(0xff6DFFF0),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Companies(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Incorporation Certificate",
                                        style: TextStyle(
                                          fontSize: screenw * 0.04,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MaterialButton(
                              height: screenh * 0.061,
                              minWidth: screenw * 0.487,
                              color: Color(0xff6DFFF0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Companies(),
                                  ),
                                );
                              },
                              child: Text(
                                "Save and Next",
                                style: TextStyle(
                                  fontSize: screenw * 0.06,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
