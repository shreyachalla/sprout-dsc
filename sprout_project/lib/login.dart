import 'package:flutter/material.dart';
import 'outline.dart';

void main() {
  runApp(Login());
}

class LoginPage extends State<Login> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('BIG LOGO'),
              IconButton(
                icon: Icon(
                  Icons.laptop_chromebook_sharp,
                ),
                onPressed: () {
                  navigateToOutlinePage(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future navigateToOutlinePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Outline()));
}

class Login extends StatefulWidget {
  State<StatefulWidget> createState() {
    return LoginPage();
  }
}
