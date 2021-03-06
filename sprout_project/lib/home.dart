import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back [person]'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Looking good, [person].',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            RaisedButton(
              textColor: Colors.blue,
              color: Colors.white,
              child: Text('Here is how'),
              onPressed: () {
                navigateToSubPage(context);
              },
            ),
            Text(
              'you can do better.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 50, 300, 2),
              alignment: Alignment.bottomLeft,
              child: IconButton(
                  icon: Icon(
                    Icons.attach_money_outlined,
                  ),
                  onPressed: () {
                    return showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text("Tip of the Day"),
                        content: Text(
                            "Investing in healthcare ASAP could give you a booming return, recent studies show."),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Text("Great!"),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }
  //final Map<String, Map<String, String>> quotePrice = quotePrices();

  /*Future Map<String, Map<String, String>> async quotePrices() {
    return await FinanceQuote.getPrice(
        quoteProvider: QuoteProvider.yahoo, symbols: <String>['KO']);
  }*/
}

//final Map<String, Map<String, String>> quotePrice = await FinanceQuote.getPrice(
//   quoteProvider: QuoteProvider.yahoo, symbols: <String>['KO']);

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weekly Recommendations'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Click button to back to Main Page'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Back to Main Page'),
              onPressed: () {
                backToMainPage(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}
