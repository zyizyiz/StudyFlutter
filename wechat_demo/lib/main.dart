import 'package:flutter/material.dart';
import 'package:wechat_demo/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(0, 0, 0, 0.0),
        splashColor: Color.fromRGBO(0, 0, 0, 0.0),
        cardColor: Color.fromRGBO(1, 1, 1, 0.65),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RootPage(),
    );
  }
}
