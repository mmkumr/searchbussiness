import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Graph extends StatefulWidget {
  Graph({Key key}) : super(key: key);

  @override
  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  List<charts.Series<Sales, DateTime>> _seriesLineData;

  var linesalesdata = [
    new Sales(DateTime(2017, 1, 19), 34),
    new Sales(DateTime(2017, 2, 19), 22),
    new Sales(DateTime(2017, 3, 19), 45),
    new Sales(DateTime(2017, 4, 19), 34),
    new Sales(DateTime(2017, 5, 19), 61),
    new Sales(DateTime(2017, 6, 19), 80),
  ];
  var linesalesdata1 = [
    new Sales(DateTime(2017, 1, 19), 70),
    new Sales(DateTime(2017, 2, 19), 47),
    new Sales(DateTime(2017, 3, 19), 35),
    new Sales(DateTime(2017, 4, 19), 50),
    new Sales(DateTime(2017, 5, 19), 80),
    new Sales(DateTime(2017, 6, 19), 60),
  ];

  var linesalesdata2 = [
    new Sales(DateTime(2017, 1, 19), 20),
    new Sales(DateTime(2017, 2, 19), 24),
    new Sales(DateTime(2017, 3, 19), 25),
    new Sales(DateTime(2017, 4, 19), 40),
    new Sales(DateTime(2017, 5, 19), 45),
    new Sales(DateTime(2017, 6, 19), 70),
  ];
  _generateData() {
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    // ignore: deprecated_member_use
    _seriesLineData = List<charts.Series<Sales, DateTime>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: charts.TimeSeriesChart(
                  _seriesLineData,
                  defaultRenderer: new charts.LineRendererConfig(
                      includeArea: false, stacked: false),
                  animate: true,
                  animationDuration: Duration(seconds: 3),
                  behaviors: [
                    new charts.ChartTitle('Date',
                        behaviorPosition: charts.BehaviorPosition.bottom,
                        titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea),
                    new charts.ChartTitle('Score',
                        behaviorPosition: charts.BehaviorPosition.start,
                        titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    color: Color(0xff990099),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("User"),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    color: Color(0xff109618),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Investor"),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    color: Color(0xffff9900),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Growth"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      onWillPop: () {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitDown,
          DeviceOrientation.portraitUp,
        ]);
        Navigator.pop(context);
      },
    );
  }
}

class Sales {
  DateTime yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
