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
        body: Center(
          child: Table(
            border: TableBorder.all(color: Colors.white),
            children: [
              TableRow(children: [
                RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  child: Text('AAPL'),
                  onPressed: () {
                    navigateToPortfolioSubPage(context);
                  },
                ),
                RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  child: Text('AAPL'),
                  onPressed: () {
                    navigateToPortfolioSubPage(context);
                  },
                ),
              ]),
              TableRow(children: [
                RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  child: Text('AAPL'),
                  onPressed: () {
                    navigateToPortfolioSubPage(context);
                  },
                ),
                RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  child: Text('AAPL'),
                  onPressed: () {
                    navigateToPortfolioSubPage(context);
                  },
                ),
              ]),
              TableRow(children: [
                RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  child: Text('AAPL'),
                  onPressed: () {
                    navigateToPortfolioSubPage(context);
                  },
                ),
                RaisedButton(
                  textColor: Colors.blue,
                  color: Colors.white,
                  child: Text('AAPL'),
                  onPressed: () {
                    navigateToPortfolioSubPage(context);
                  },
                ),
              ]),
            ],
          ),
        ));
  }

  Future navigateToPortfolioSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PortfolioSubPage()));
  }
}

class PortfolioSubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Performance: AAPL'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Table(
              border: TableBorder.all(color: Colors.white),
              children: [
                TableRow(children: [
                  RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.white,
                    child: Text('Derivative'),
                    onPressed: () {},
                  ),
                ]),
                TableRow(children: [
                  RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.white,
                    child: Text('Call Option'),
                    onPressed: () {},
                  ),
                ]),
                TableRow(children: [
                  RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.white,
                    child: Text('Trading'),
                    onPressed: () {},
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
