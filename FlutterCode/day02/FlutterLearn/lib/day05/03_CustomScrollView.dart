import 'dart:math';

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
          CustomScrollViewDemo(),
          SizedBox(height: 10,),
          CustomScrollView2(),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

class CustomScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.red[100],
      /// 加载完毕后不会重新加载
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hello World"),
              background: Image.asset("assets/images/juren.jpeg"),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2
            ),
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int index) {
              return Container(color: Color.fromARGB(255, Random().nextInt(
                  256), Random().nextInt(256), Random().nextInt(256)));
            },
                childCount: 10),

          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx, int index) {
                  return ListTile(
                    leading: Icon(Icons.people),
                    title: Text("联系人$index"),
                  );
                },
                childCount: 20
            ),
          ),
        ],
      ),

    );
  }
}

class CustomScrollView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CustomScrollView(
        slivers: [
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.5
                ),
                delegate: SliverChildBuilderDelegate(
                        (BuildContext ctx, int index) {
                      print("CustomScrollView2  $index");
                      return Container(color: Color.fromARGB(255, Random().nextInt(
                          256), Random().nextInt(256), Random().nextInt(256)));
                    },
                    childCount: 10
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}