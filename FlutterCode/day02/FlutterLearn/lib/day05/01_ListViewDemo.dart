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
      body: Column(
        children: <Widget>[
          ListViewDemo(),
          SizedBox(height: 10,),
          ListViewDemo1(),
          SizedBox(height: 10,),
          ListViewDemo2(),
        ],
      ),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.red[100],
      /// 加载后，滑动到该索引 不会重新加载
      child: ListView.separated(
          itemBuilder: (BuildContext ctx, int index) {
            print("separated  $index");
            return Text(
                "Hello World: $index"
            );
          },
          separatorBuilder: (BuildContext ctx, int index) {
            return Divider(
              color: Colors.red,
              height: 30,
              indent: 30,
              endIndent: 30,
              thickness: 1,
            );
          },
          itemCount: 100),
    );
  }
}

class ListViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.orange[100],
      /// 加载后，滑动到该索引 会重新加载
      child: ListView.builder(
        itemCount: 100,
        itemExtent: 60,
        itemBuilder: (BuildContext ctx, int index) {
//          print("builder  $index");
          return Text(
              "Hello World: $index"
          );
        },
      ),
    );
  }
}

class ListViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      color: Colors.green[100],
      child: ListView(
        /// 一次性全部加载
        children: List.generate(100, (index) {
//          print("generate  $index");
          return ListTile(
            leading: Icon(Icons.people),
            trailing: Icon(Icons.delete),
            title: Text("联系人${index + 1}"),
            subtitle: Text("联系人电话号码:18866665555"),
          );
        }),
      ),
    );
  }
}