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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Cash Moneyz App",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
        ]),
        centerTitle: true,
        elevation: 0.8,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(7),
                  onPressed: () {
                    Navigator.pushNamed(context, '/spend');
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "spend",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.all(10),
                  onPressed: () {
                    Navigator.pushNamed(context, '/deposit');
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "deposit",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
