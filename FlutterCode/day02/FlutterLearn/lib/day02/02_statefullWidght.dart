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
      body: YZContentBody("nihao"),
    );
  }
}

class YZContentBody extends StatefulWidget {

  final String msg;

  YZContentBody(this.msg);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _YZHomeContentState();
  }
}

/**
 * 为什么Flutter在设计的时候StatefulWidget的build方法放在State中
 *  1.build出来的Widget是需要依赖State中的变量(状态/数据)
 *  2.在Flutter的运行过程中:
 *    Widget是不断的销毁和创建的
 *    当我们自己的状态发生改变时, 并不希望重新状态一个新的State
 */
// State是加_: 状态这个类只是给Widget使用
class _YZHomeContentState extends State<YZContentBody> {

  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getButtons(),
          Text("当前计数:$_counter", style: TextStyle(fontSize: 25),),
          Text("传递的信息:${widget.msg}"),
        ],
      ),
    );
  }


  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text("+",style: TextStyle(fontSize: 15),),
          color: Colors.pink,
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        SizedBox(width: 5,),
        RaisedButton(
          child: Text("-",style: TextStyle(fontSize: 15),),
          color: Colors.purple,
          onPressed: () {
            setState(() {
              if (_counter > 0) {
                _counter--;
              }
            });
          },
        ),
      ],
    );
  }

}
