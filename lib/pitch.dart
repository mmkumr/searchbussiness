import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:searchbusiness/Investor_details.dart';
import 'package:searchbusiness/auth/signup/signup.dart';
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

class Pitch extends StatefulWidget {
  Pitch({Key key}) : super(key: key);

  @override
  _PitchState createState() => _PitchState();
}

class _PitchState extends State<Pitch> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List _section = [
    Filters(id: 1, name: "Startup"),
    Filters(id: 2, name: "Incubator"),
    Filters(id: 3, name: "Investers"),
    Filters(id: 4, name: "Mentor"),
  ];
  List _technology = [
    Filters(id: 1, name: "Robotics"),
    Filters(id: 2, name: "Embedded"),
    Filters(id: 3, name: "Tele-communication"),
    Filters(id: 4, name: "Computer Science"),
  ];
  List<dynamic> _selectedSections;
  List<dynamic> _selectedTechnologies;
  var _chosenValue = "Infosys";
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
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: TextFormField(
                  //controller: _name,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(Icons.search),
                    hintText: "Search",
                    labelStyle: TextStyle(
                      color: Color(0xff6DFFF0),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  validator: (value) {
                    if (value.isEmpty) {
                      return "The name field cannot be empty";
                    }
                    return null;
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
                    child: MaterialButton(
                      height: 40,
                      minWidth: 80,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {
                        var alert = new AlertDialog(
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(color: Colors.orangeAccent),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Comfirm",
                                style: TextStyle(color: Colors.orangeAccent),
                              ),
                            ),
                          ],
                          title: Text("Select the filters"),
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text("Section"),
                                    MultiSelectDialogField(
                                      searchable: true,
                                      buttonText: Text("Section"),
                                      title: Text("Sections"),
                                      buttonIcon: Icon(
                                        Icons.arrow_drop_down_circle,
                                        color: Color(0xff6DFFF0),
                                      ),
                                      items: _section
                                          .map(
                                              (e) => MultiSelectItem(e, e.name))
                                          .toList(),
                                      listType: MultiSelectListType.CHIP,
                                      onConfirm: (values) {
                                        _selectedSections = values;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("Technology"),
                                    MultiSelectDialogField(
                                      searchable: true,
                                      buttonText: Text("Technology"),
                                      title: Text("Technolgies"),
                                      buttonIcon: Icon(
                                        Icons.arrow_drop_down_circle,
                                        color: Color(0xff6DFFF0),
                                      ),
                                      items: _technology
                                          .map(
                                              (e) => MultiSelectItem(e, e.name))
                                          .toList(),
                                      listType: MultiSelectListType.CHIP,
                                      onConfirm: (values) {
                                        setState(() {
                                          _selectedTechnologies = values;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                        showDialog(context: context, builder: (_) => alert);
                      },
                      child: Row(
                        children: [Icon(Icons.segment), Text("Filters")],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 8,
                    ),
                    child: DropdownButton<String>(
                      value: _chosenValue,
                      //elevation: 5,
                      style: TextStyle(
                        color: Colors.black,
                      ),

                      items: <String>[
                        'Infosys',
                        'TCS',
                        'Razorpay',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),

                      onChanged: (String value) {
                        setState(() {
                          _chosenValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Container(
                  height: screenh * 0.68,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
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
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => InvestorDetails(
                                        name: "CIIE IIMA",
                                      ),
                                    ),
                                  );
                                },
                                trailing: Text("Incubator\nSince 2014"),
                                leading: FlutterLogo(size: 72.0),
                                title: Text('CIIE IIMA'),
                                subtitle: Text(
                                  "At the heart of IIM Ahmedabad lies this center for innovation incubation & entrepreneurship which stands as a pioneer in the field of the entrepreneurial sector as an incubator.\nLocation: Vastrapur, Ahmedabad, Gujarat 380015, India.",
                                ),
                                isThreeLine: true,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.white,
                              height: 50,
                              minWidth: screenw * 0.9,
                              child: Text("Pitch"),
                            )
                          ],
                        ),
                      );
                    },
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
