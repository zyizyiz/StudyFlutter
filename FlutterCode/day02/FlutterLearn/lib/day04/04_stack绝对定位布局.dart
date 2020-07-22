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
      body: ListView(
        children: <Widget>[

          RowDemo(),
          SizedBox(height: 10,),
          StackDemo(),
          SizedBox(height: 10,),
          ExpandedDemo(),
          SizedBox(height: 10,),
          ColumnDemo(),
          RowDemo1(),
          ButtonRowDemo(),
        ],
      ),
    );
  }
}

class RowDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RowDemoState();
  }
}

class _RowDemoState extends State<RowDemo> {

  bool _isFavor = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: [
        Image.asset("assets/images/juren.jpeg"),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            color: Colors.grey.withAlpha(200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "进击的巨人挺不错的",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: _isFavor ? Colors.red : Colors.white,
                  onPressed: () {
                    setState(() {
                      _isFavor = !_isFavor;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Image.asset(
          "assets/images/juren.jpeg",
          width: 300,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          bottom: -50,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 20,
          child: Text(
            "进击的巨人",
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
        ),
      ],
    );
  }
}

class ExpandedDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /**
           * Flexible中的属性:
           * - flex
           * Expanded(更多) -> Flexible(fit: FlexFit.tight)
           * 空间分配问题
           */
          Expanded(child: Container(height: 60, color: Colors.red,),),
          Expanded(
              flex: 2,
              child: Container(width: 1000, height: 100, color: Colors.green)
          ),
          Container(width: 90, height: 80, color: Colors.blue),
          Container(width: 50, height: 120, color: Colors.orange),
        ],
      ),
    );
  }
}

class ColumnDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 80,
          height: 60,
          color: Colors.red,
          child: Text(
            "Hello",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          width: 120,
          height: 100,
          color: Colors.green,
          child: Text(
            "World",
            style: TextStyle(fontSize: 28),
          ),
        ),
        Container(
          width: 90,
          height: 80,
          color: Colors.blue,
          child: Text(
            "abc",
            style: TextStyle(fontSize: 38),
          ),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.orange,
          child: Text(
            "cba",
            style: TextStyle(fontSize: 48),
          ),
        ),
      ],
    );
  }
}


class RowDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 80,
          height: 60,
          color: Colors.red,
          child: Text(
            "Hello",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          width: 120,
          height: 100,
          color: Colors.green,
          child: Text(
            "World",
            style: TextStyle(fontSize: 28),
          ),
        ),
        Container(
          width: 90,
          height: 80,
          color: Colors.blue,
          child: Text(
            "abc",
            style: TextStyle(fontSize: 38),
          ),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.orange,
          child: Text(
            "cba",
            style: TextStyle(fontSize: 48),
          ),
        ),
      ],
    );
  }
}

class ButtonRowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Colors.red,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.bug_report),
          Text("BUG上报"),
        ],
      ),
      onPressed: () => print("点击上报BUG"),
    );
  }
}