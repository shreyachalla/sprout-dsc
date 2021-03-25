import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioPage());
}

class PortfolioPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Market'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Table(
          border: TableBorder.all(color: Colors.white),
          children: [
            TableRow(children: [
              RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Column(// Replace with a Row for horizontal icon + text
                      children: <Widget>[
                    Image.network(
                        'https://g.foolcdn.com/art/companylogos/square/aapl.png',
                        height: 135,
                        width: 100),
                    Text("AAPL")
                  ]),
                  onPressed: () {
                    navigateToPortfolioSubPage(context, 'AAPL');
                  }),
              RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Column(// Replace with a Row for horizontal icon + text
                      children: <Widget>[
                    Image.network(
                        'https://g.foolcdn.com/art/companylogos/square/msft.png',
                        height: 135,
                        width: 100),
                    Text("MSFT")
                  ]),
                  onPressed: () {
                    navigateToPortfolioSubPage(context,  'MSFT');
                  }),
            ]),
            TableRow(children: [
              RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Column(// Replace with a Row for horizontal icon + text
                      children: <Widget>[
                    Image.network(
                        'https://www.carlogos.org/car-logos/tesla-logo-2200x2800.png',
                        height: 135,
                        width: 100),
                    Text("TSLA")
                  ]),
                  onPressed: () {
                    navigateToPortfolioSubPage(context, 'TSLA');
                  }),
              RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Column(// Replace with a Row for horizontal icon + text
                      children: <Widget>[
                    Image.network(
                        'https://i.pinimg.com/originals/08/5f/d8/085fd8f7819dee3b716da73d3b2de61c.jpg',
                        height: 135,
                        width: 100),
                    Text("AMZN")
                  ]),
                  onPressed: () {
                    navigateToPortfolioSubPage(context, 'AMZN');
                  }),
            ]),
            TableRow(children: [
              RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Column(// Replace with a Row for horizontal icon + text
                      children: <Widget>[
                    Image.network('https://blog.hubspot.com/hubfs/image8-2.jpg',
                        height: 135, width: 100),
                    Text("GOOGL")
                  ]),
                  onPressed: () {
                    navigateToPortfolioSubPage(context, 'GOOGL');
                  }),
              RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Column(// Replace with a Row for horizontal icon + text
                      children: <Widget>[
                    Image.network('https://logodix.com/logo/26194.jpg',
                        height: 135, width: 100),
                    Text("SNE")
                  ]),
                  onPressed: () {
                    navigateToPortfolioSubPage(context, 'SNE');
                  }),
            ]),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Image.network(
                      'https://static.thenounproject.com/png/3202639-200.png')),
              label: 'Week: \$5000.00'),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Image.network(
                      'https://static.thenounproject.com/png/247254-200.png')),
              label: 'Month: \$15000.00'),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Image.network(
                    'https://static.thenounproject.com/png/247259-200.png'),
              ),
              label: 'Year: \$25000.00')
        ],
      ),
    );
  }

  Future navigateToPortfolioSubPage(context, name) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PortfolioSubPage(name: name)));
  }
}

class PortfolioSubPage extends StatelessWidget {
  final String name;
  PortfolioSubPage({Key key, @required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Performance: ' + name),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(image: AssetImage('lib/' + name + '.png'), height: 455, width: 450),
            Table(
              border: TableBorder.all(color: Colors.white),
              children: [
                TableRow(children: [
                  RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.white,
                    child: Text('Derivative'),
                    onPressed: () {
                      return showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text("Derivative"),
                          content: Text("Explore your investment options"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Text("Show me how!"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ]),
                TableRow(children: [
                  RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.white,
                    child: Text('Call Option'),
                    onPressed: () {
                      return showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text("Call Option"),
                          content: Text("Enter a contract with a seller"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Text("Show me how!"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ]),
                TableRow(children: [
                  RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.white,
                    child: Text('Trading'),
                    onPressed: () {
                      return showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text("Trading"),
                          content: Text("Buy and sell stocks"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Text("Show me how!"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}
