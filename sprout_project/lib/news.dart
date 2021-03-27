import 'package:flutter/material.dart';

void main() {
  runApp(NewsPage());
}

class NewsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Text(
                'News Page',
              ),
              Image(
                  image: AssetImage('lib/SproutSavings.jpg'), height: 70, width: 80
              )
            ],
          ),
          //leading: Image(image: AssetImage('lib/SproutSavings.jpg'), height: 70, width: 80), // you can put Icon as well, it accepts any widget.
          //title: Text('News Page'),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
            child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              height: 100,
              color: Colors.amber[600],
              child:
                  const Center(child: Text('Economists foreshadow recession')),
            ),
            Container(
              height: 100,
              color: Colors.amber[500],
              child: const Center(
                  child: Text(
                      'Unemployment rate decreases as vacination rates rise')),
            ),
            Container(
              height: 100,
              color: Colors.amber[100],
              child: const Center(
                  child: Text('Gamestop stock value increases once again')),
            ),
          ],
        )));
  }
}
