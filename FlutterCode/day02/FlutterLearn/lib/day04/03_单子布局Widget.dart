import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: YZHomePage(),
    );
  }
}

class YZHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Column(
        children: <Widget>[
          YZHomeContent(),
          SizedBox(height: 10,),
          PaddingDemo(),
          AlignDemo()
        ],
      ),
    );
  }
}

class YZHomeContent extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _YZHomeContentState();
  }
}

class _YZHomeContentState extends State<YZHomeContent> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      width: 300,
      height: 300,
      alignment: Alignment(0,0),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Text("Hello World"),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
              width: 5,
              color: Colors.purple
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.orange,
                offset: Offset(10,10),
                spreadRadius: 5,
                blurRadius: 10),
            BoxShadow(
                color: Colors.blue,
                offset: Offset(-10,10),
                spreadRadius: 5,
                blurRadius: 10),
          ]
      ),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text("hello"),
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: Alignment(0,0),
      widthFactor: 5,
      heightFactor: 5,
      child: Icon(Icons.pets),
    );
  }
}