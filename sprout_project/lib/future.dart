import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart'; // import the package
import 'outline.dart';

void main() => runApp(FuturePage());

class FuturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plan Your Future',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Plan Your Future'),
    );
  }

  //Back to main page
  void backToMainPage(context) {
    Navigator.pop(context);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  var saved = "";

  Map<String, double> data = new Map();
  bool _loadChart = false;
  @override
  void initState() {
    data.addAll({
      'Family': 0,
      'Education': 0.0,
      'Home': 0,
      'General': 0,
    });
    super.initState();
  }

  List<Color> _colors = [
    Colors.teal,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.redAccent
  ];
  var title1;
  var title2;
  var title3;
  var title4;
  var text = "";
  double changed;

  void _setText() {
    setState(() {
      text = 'Family' +
          title1 +
          'Education' +
          title2 +
          'Home' +
          title3 +
          'General' +
          title4;
      changed = double.parse(title1);
      data.addAll({
        'Family': double.parse(title1),
        'Education': double.parse(title2),
        'Home': double.parse(title3),
        'General': double.parse(title4)
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              /*SizedBox(
              height: 50,
            ),*/
              Text("Family"),
              TextField(
                controller: myController1,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a search term'),
                onChanged: (value1) => title1 = value1,
              ),
              Text("Education"),
              TextField(
                controller: myController2,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a search term'),
                onChanged: (value) => title2 = value,
              ),
              Text("Home"),
              TextField(
                controller: myController3,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a search term'),
                onChanged: (value) => title3 = value,
              ),
              Text("General"),
              TextField(
                controller: myController4,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a search term'),
                onChanged: (value) => title4 = value,
              ),
              RaisedButton(
                onPressed: _setText,
                child: Text('Submit'),
                elevation: 8,
              ),
              Text(
                'Percentage of Savings',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(text),
              SizedBox(
                height: 50,
              ),
              _loadChart
                  ? PieChart(
                      dataMap: data,
                      colorList:
                          _colors, // if not declared, random colors will be chosen
                      animationDuration: Duration(milliseconds: 1500),
                      chartLegendSpacing: 32.0,
                      chartRadius: MediaQuery.of(context).size.width /
                          2.7, //determines the size of the chart
                      showChartValuesInPercentage: true,
                      showChartValues: true,
                      showChartValuesOutside: false,
                      chartValueBackgroundColor: Colors.grey[200],
                      showLegends: true,
                      legendPosition: LegendPosition
                          .right, //can be changed to top, left, bottom
                      decimalPlaces: 1,
                      showChartValueLabel: true,
                      initialAngle: 0,
                      chartValueStyle: defaultChartValueStyle.copyWith(
                        color: Colors.blueGrey[900].withOpacity(0.9),
                      ),
                      chartType:
                          ChartType.disc, //can be changed to ChartType.ring
                    )
                  : SizedBox(
                      height: 150,
                    ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Click to Show Chart',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    _loadChart = true;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.backup,
                ),
                onPressed: () {
                  navigateToHomePage(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future navigateToHomePage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Outline()));
  }
}
