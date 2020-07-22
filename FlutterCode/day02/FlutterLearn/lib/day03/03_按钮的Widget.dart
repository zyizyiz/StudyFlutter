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
      body: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RaisedButton(
          child: Text("RaisedButton"),
          textColor: Colors.white,
          color: Colors.purple,
          onPressed: (){
            print("click RaisedButton");
          },
        ),

        FlatButton(
          child: Text("FlatButton"),
          textColor: Colors.white,
          color: Colors.orange,
          onPressed: () => print("click FlatButton"),
        ),

        OutlineButton(
          child: Text("OutlineButton"),
          color: Colors.orange,
          onPressed: () => print("click OutlineButton"),
        ),

        FloatingActionButton(
          child: Text("FloatingActionButton"),
//          backgroundColor: Colors.orange,
          onPressed: () => print("click FloatingActionButton"),
        ),

        FlatButton(
          color: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.favorite),
              Text("喜欢")
            ],
          ),
          onPressed: () {
            print("click custom");
          },
        ),
      ],
    );
  }
}