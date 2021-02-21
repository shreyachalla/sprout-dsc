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
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'Home'),
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
                Icon(
                  Icons.attach_money_outlined,
                ),
                Icon(
                  Icons.attach_money_outlined,
                ),
              ]),
              TableRow(children: [
                Icon(
                  Icons.attach_money_outlined,
                ),
                Icon(
                  Icons.attach_money_outlined,
                ),
              ]),
              TableRow(children: [
                Icon(
                  Icons.attach_money_outlined,
                ),
                Icon(
                  Icons.attach_money_outlined,
                ),
              ]),
            ],
          ),
        ));
  }
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

class Outline extends StatefulWidget {
  State<StatefulWidget> createState() {
    return OutlineState();
  }
}
