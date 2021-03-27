import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sprout_project/authentication.dart';
import 'package:sprout_project/sign_in_screen.dart';

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
              alignment: Alignment.bottomCenter,
              child: IconButton(
                  icon: Icon(
                    Icons.lightbulb,
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
            Container(
              margin: EdgeInsets.fromLTRB(90, 0, 100, 0),
              height: 100,
              width: 400,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 3.0
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //                 <--- border radius here
                ),
                  color: Colors.teal
              ),
              child: Text('AAPL stocks are quickly increasing in value at the expense of SNE valuation. Consider purchasing additional AAPL stock units while maintaining a stable SNE stock base.', textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
        Container(
            margin : EdgeInsets.fromLTRB(120, 30, 0, 0),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Back to Main Page'),
              onPressed: () {
            backToMainPage(context);
          },
        )
        )],
        ),
      ),
    );
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  late User _user;
  bool _isSigningOut = false;

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  void initState() {
    _user = widget._user;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen);
}}
