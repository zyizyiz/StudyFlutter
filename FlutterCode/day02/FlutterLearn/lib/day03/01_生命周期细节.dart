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
      body: YZContentBody(),
    );
  }
}

class YZContentBody extends StatefulWidget {

  YZContentBody() {
    print("1.调用YZContentBody的constructor方法");
  }

  @override
  State<StatefulWidget> createState() {
    print("2.调用YZContentBody的createState方法");
    return _YZHomeContentState();
  }
}

class _YZHomeContentState extends State<YZContentBody> {

  int _count = 0;

  _YZHomeContentState() {
    print("3.调用_YZHomeContentState的constructor方法");
  }

  @override
  void initState() {

    super.initState();
    print("4.调用_YZHomeContentState的initState方法");
  }

  @override
  void didUpdateWidget(YZContentBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("调用_YZHomeContentState的didChangeDependencies方法");
  }

  @override
  Widget build(BuildContext context) {
    print("5.调用_YZHomeContentState的build方法");
    return Column(
      children: [
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
        ),
        Text("数字：$_count"),
      ],
    );

  }

  @override
  void dispose() {
    print("6.调用_YZHomeContentState的dispose方法");
    super.dispose();
  }
}
