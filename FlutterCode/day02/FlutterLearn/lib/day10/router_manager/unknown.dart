
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZUnknownPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("错误页面"),
      ),
      body: Center(
        child: Text("404", style: TextStyle(fontSize: 20),),
      ),
    );
  }
}