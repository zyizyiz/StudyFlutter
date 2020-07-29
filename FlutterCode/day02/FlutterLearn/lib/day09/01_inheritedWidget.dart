

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class ZCounterWidget extends InheritedWidget {
  final int counter;

  ZCounterWidget({this.counter, Widget child}): super(child: child);

  static ZCounterWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(ZCounterWidget oldWidget) {
    return oldWidget.counter != counter;
  }
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

class ZHomePage extends StatefulWidget {

  @override
  _ZHomePageState createState() => _ZHomePageState();
}

class _ZHomePageState extends State<ZHomePage> {

  int _counter = 100;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ZCounterWidget(
        counter: _counter,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ZShowData01(),
              ZShowData02()
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}

class ZShowData01 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ZShowData01State();
  }
}

class _ZShowData01State extends State<ZShowData01> {

  @override
  Widget build(BuildContext context) {
    int counter = ZCounterWidget.of(context).counter;

    return Card(
      color: Colors.red,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );

  }
}


class ZShowData02 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    int counter = ZCounterWidget.of(context).counter;

    return Card(
      color: Colors.blue,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );

  }
}