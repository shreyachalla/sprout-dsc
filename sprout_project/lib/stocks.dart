import 'package:flutter/material.dart';

void main() {
  runApp(Stocks());
}

class StocksState extends State<Stocks> {
  /*
    Use Clearbit API to show company logos in grid form.
     */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Portfolio'),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(20, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}

class Stocks extends StatefulWidget {
  State<StatefulWidget> createState() {
    return StocksState();
  }
}
