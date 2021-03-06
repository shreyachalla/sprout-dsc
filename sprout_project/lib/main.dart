import 'package:flutter/material.dart';
import 'news.dart';
import 'portfolio.dart';
import 'outline.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: Outline(),
    );
  }
}
