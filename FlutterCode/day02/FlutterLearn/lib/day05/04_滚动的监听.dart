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

class YZHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _YZHomePageState();
  }

}

class _YZHomePageState extends State<YZHomePage> {

  ScrollController _controller = ScrollController(initialScrollOffset: 300);

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollStartNotification) {
          print("开始滚动");
        } else if (notification is ScrollUpdateNotification) {
          print("正在滚动...,总滚动距离:${notification.metrics.maxScrollExtent} 当前滚动的位置: ${notification.metrics.pixels}");
        } else if (notification is ScrollEndNotification) {
          print("结束滚动");
        }
        return true;
      },
      child: ListView.builder(
          controller: _controller,
          itemCount: 100,
          itemBuilder: (BuildContext ctx, int index) {
            return ListTile(
              leading: Icon(Icons.people),
              title: Text("联系人 $index"),
            );
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

}