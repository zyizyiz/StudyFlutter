import 'package:FlutterLearn/douban/pages/home/home_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ZHomeContent(),
    );
  }
}