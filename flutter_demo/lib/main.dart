import 'package:flutter/material.dart';
import 'package:flutter_demo/state_mag_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: StateManagerDemo(),
    );
  }
}
