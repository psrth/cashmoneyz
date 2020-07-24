import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(MyApp());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Cash Moneyz App",
            textAlign: TextAlign.center,
          ),
        ]),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/spend');
              },
              child: Text("spend"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/deposit');
              },
              child: Text("deposit"),
            ),
          ],
        ),
      ),
    );
  }
}
