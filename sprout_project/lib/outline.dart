import 'package:flutter/material.dart';

void main() {
  runApp(Outline());
}

class OutlineState extends State<Outline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sprout'),
      ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  label: 'Home'
                ),
                BottomNavigationBarItem(
                    icon: new Icon(Icons.mood),
                    label: 'My Portfolio'
                ),
                BottomNavigationBarItem(
                    icon: new Icon(Icons.laptop),
                    label: 'News'
                )
              ],
            ),
    );
  }
}

class Outline extends StatefulWidget {
  State<StatefulWidget> createState() {
    return OutlineState();
  }
}
