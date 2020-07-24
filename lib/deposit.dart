import 'package:flutter/material.dart';
import 'main.dart';

class deposit extends StatefulWidget {
  @override
  _depositState createState() => _depositState();
}

class _depositState extends State<deposit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deposit Money'),
      ),
    );
  }
}
