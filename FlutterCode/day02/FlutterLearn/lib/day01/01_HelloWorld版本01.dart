import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
      MaterialApp(
        // 取消导航栏右上角的DEBUG标签
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("第一个Flutter程序"),
          ),
          body: Center(
            child: Text(
              "Hello world",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      )
  );
}