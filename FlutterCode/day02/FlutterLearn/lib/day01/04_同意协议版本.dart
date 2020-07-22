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
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Flutter应用",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: YZContentBody(),
    );
  }
}

class YZContentBody extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return YZContentBodyState();
  }
}

class YZContentBodyState extends State<YZContentBody> {

  var flag = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("YZContentBodyState Build");
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: flag,
            activeColor: Colors.orange,
            onChanged: (value) {
              this.setState(() {
                flag = value;
              });
            },
          ),
          Text(
            "同意协议",
            style: TextStyle(
                fontSize: 15,
                color: Colors.amber
            ),
          ),
        ],
      ),
    );
  }
}