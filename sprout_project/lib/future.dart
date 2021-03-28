import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart'; // import the package
import 'outline.dart';

//import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyAppPage(key: Key("Hello")));
  }
}

class MyAppPage extends StatefulWidget {
  MyAppPage({
    required Key key,
  }) : super(key: key);
  @override
  MyAppPageState createState() => MyAppPageState();
}

class MyAppPageState extends State<MyAppPage> {
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
  double changed = 0;

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
      _loadChart = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              'Plan Your Future',
            ),
            Image(
                image: AssetImage('lib/SproutSavings.jpg'), height: 70, width: 80
            )
          ],
        ),
        //title: Text('Plan Your Future'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => navigateToHomePage(context),
        ),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter your estimated savings needed in each area',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Family"),
              TextField(
                controller: myController1,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter an amount here'),
                onChanged: (value1) => title1 = value1,
              ),
              Text("Education"),
              TextField(
                controller: myController2,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter an amount here'),
                onChanged: (value) => title2 = value,
              ),
              Text("Home"),
              TextField(
                controller: myController3,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter an amount here'),
                onChanged: (value) => title3 = value,
              ),
              Text("General"),
              TextField(
                controller: myController4,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter an amount here'),
                onChanged: (value) => title4 = value,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Click to Show Chart',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _setText,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Percentage of Savings',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              //Text(text),
              SizedBox(
                height: 10,
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
                      /*
                      chartValueStyle: defaultChartValueStyle.copyWith(
                          color: Colors.blueGrey[900].withOpacity(0.9),
                      ),

                       */
                      chartType:
                          ChartType.disc, //can be changed to ChartType.ring
                    )
                  : SizedBox(
                      height: 150,
                    ),
              SizedBox(
                height: 50,
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
