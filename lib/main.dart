import 'package:cashmoneyz/spend.dart';
import 'package:flutter/material.dart';
import 'deposit.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => Home(),
        '/deposit': (context) => deposit(),
        '/spend': (context) => spend(),
      },
      title: 'Cash Moneyz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
