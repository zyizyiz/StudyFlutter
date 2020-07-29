

import 'package:FlutterLearn/day09/01_inheritedWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'day09/viewmodel/counter_view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => ZCounterViewModel(),
      child: MyApp(),
    )
  );
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter",
      home: ZHomePage(),
    );
  }
}

class ZHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTapDown: (details) {
                  print("outer click");
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.yellow,
                  alignment: Alignment.center,
                ),
              ),
              IgnorePointer(
                child: GestureDetector(
                  onTapDown: (details) {
                    print("inner click");
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}