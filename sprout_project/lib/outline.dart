import 'package:flutter/material.dart';
import 'news.dart';
import 'portfolio.dart';
import 'home.dart';
import 'future.dart';
import 'login.dart';

//import 'stocks.dart';

void main() {
  runApp(Outline());
}

class Outline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sprout'),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {
                  navigateToHomePage(context);
                },
              ),
              label: 'Home Page'),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.mood,
                ),
                onPressed: () {
                  navigateToPortfolioPage(context);
                },
              ),
              label: 'My Portfolio'),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.laptop_chromebook_sharp,
                ),
                onPressed: () {
                  navigateToNewsPage(context);
                },
              ),
              label: 'News'),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.access_time),
                onPressed: () {
                  navigateToFuturePage(context);
                },
              ),
              label: 'Future'),
        ],
      ),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }

  Future navigateToPortfolioPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PortfolioPage()));
  }

  Future navigateToNewsPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NewsPage()));
  }

  Future navigateToHomePage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Outline()));
  }

  Future navigateToFuturePage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }
}

/*class Outline extends StatefulWidget {
  State<StatefulWidget> createState() {
    return OutlineState();
  }
}*/
