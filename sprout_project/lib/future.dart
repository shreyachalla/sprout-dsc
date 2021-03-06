import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart'; // import the package
import 'outline.dart';

void main() => runApp(FuturePage());

class FuturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pie Chart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pie Chart Demo'),
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
  final myController = TextEditingController();
  var saved = "";

  Map<String, double> data = new Map();
  bool _loadChart = false;
  @override
  void initState() {
    data.addAll(
        {'Family': 20000, 'Education': 69687, 'Home': 40609, 'General': 42544});
    super.initState();
  }

  List<Color> _colors = [
    Colors.teal,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.redAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter a search term'),
            ),
            Text(
              'Percentage of Savings',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Text("Hi, Your Name is :   " + myController.text),
              ],
            ),
            Text(myController.text),
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
    );
  }

  Future navigateToHomePage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Outline()));
  }
}
