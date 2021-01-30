import 'package:flutter/material.dart';

//常用： Row Column Stack

/**
 * 关于主轴：
 *    spaceBetween: 剩下的空间平均分布在小部件中间 0-1-1-0
 *    spaceAround: 剩下的空间平均分布在小部件周围  1-2-2-1
 *    spaceEvenly: 剩下的空间和小部件一起平均分布  1-1-1-1
 */
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment(0, 0),
      child: AspectDemo(),
    );
  }
}

class AspectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 200,
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0, 0),
      children: [
        Positioned(
          child: Container(
            color: Colors.white,
            width: 400,
            height: 200,
            child: Icon(Icons.add),
          ),
        ),
        Positioned(
          // right: 20,
          child: Container(
            color: Colors.red,
            width: 250,
            height: 250,
            child: Icon(Icons.search),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            color: Colors.blue,
            width: 50,
            height: 50,
            child: Icon(Icons.search),
          ),
        )
      ],
    );
  }
}

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: [
        Expanded(
          child: Container(
            height: 80,
            color: Colors.red,
            child: Text(
              "你好",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 80,
            color: Colors.blue,
            child: Text(
              "哎呦",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 80,
            color: Colors.white,
            child: Text(
              "哎呦嘿",
              style: TextStyle(fontSize: 45),
            ),
          ),
        ),
      ],
    );
  }
}
