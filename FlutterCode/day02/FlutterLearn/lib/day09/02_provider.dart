

import 'package:FlutterLearn/day09/viewmodel/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZShowData01(),
            ZShowData02()
          ],
        ),

        floatingActionButton: Selector<ZCounterViewModel, ZCounterViewModel>(
          selector: (ctx, counterVM) => counterVM,
          shouldRebuild: (pre, next) => false,
          builder: (ctx, counterVM, child) {
            return FloatingActionButton(
              child: child,
              onPressed: () {
                counterVM.counter += 1;
              },
            );
          },
          child: Icon(Icons.add),
        )

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
    int counter = Provider.of<ZCounterViewModel>(context).counter;
    return Card(
      color: Colors.red,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );

  }
}


class ZShowData02 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Card(
        color: Colors.blue,
        child: Consumer<ZCounterViewModel>(
          builder: (ctx, counterVM, child){
            return Text("当前计数: ${counterVM.counter}", style: TextStyle(fontSize: 30),);
          },
        )
    );

  }
}