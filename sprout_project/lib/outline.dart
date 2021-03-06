import 'package:flutter/material.dart';
import 'news.dart';
import 'portfolio.dart';
import 'home.dart';

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
        ],
      ),
    );
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
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }
}

class Outline extends StatefulWidget {
  State<StatefulWidget> createState() {
    return OutlineState();
  }
}
