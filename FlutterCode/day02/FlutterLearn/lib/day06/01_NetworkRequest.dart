import 'package:FlutterLearn/service/http_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter应用"),
        ),
        body: YZHomePage(),
      ),
    );
  }
}

class YZHomePage extends StatelessWidget {

  @override
  StatelessElement createElement() {

    return super.createElement();
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RaisedButton(
          color: Colors.green,
          onPressed: () => requestHttp(),
        ),
      ],
    );
  }

  Function requestHttp() {

    HttpRequest.request("/get",
        params: {"name": "xxx"})
        .then((res) {
      print(res);
    }).catchError((err) {});
  }
}