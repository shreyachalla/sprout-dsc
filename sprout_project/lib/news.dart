import 'package:flutter/material.dart';

void main() {
  runApp(NewsPage());
}

class NewsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News Page'),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
            child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('News A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('News B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('News C')),
            ),
          ],
        )));
  }
}
