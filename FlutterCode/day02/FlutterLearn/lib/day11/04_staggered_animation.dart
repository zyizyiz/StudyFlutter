

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  State<StatefulWidget> createState() {
    return ZHomePageState();
  }
}

class ZHomePageState extends State<ZHomePage> with SingleTickerProviderStateMixin {

  AnimationController _controller;

  Animation _animation;

  Animation _sizeAnim;
  Animation _colorAnim;
  Animation _opacityAnim;
  Animation _radiansAnim;



  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2)
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);

    _sizeAnim = Tween(begin: 10.0, end: 200.0).animate(_controller);
    _colorAnim = ColorTween(begin: Colors.orange, end: Colors.pink).animate(_controller);
    _opacityAnim = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _radiansAnim = Tween(begin: 0.0, end: 2 * pi).animate(_controller);

//    _controller.addListener(() {
//      setState(() {
//
//      });
//    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (ctx, child) {
            return Opacity(
              opacity: _opacityAnim.value,
              child: Transform(
                transform: Matrix4.rotationZ(_radiansAnim.value),
                alignment: Alignment.center,
                child: Container(
                  width: _sizeAnim.value,
                  height: _sizeAnim.value,
                  color: _colorAnim.value,
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          if (_controller.isAnimating) {
            _controller.stop();

          }else if (_controller.status == AnimationStatus.forward) {
            _controller.forward();
          }else if (_controller.status == AnimationStatus.reverse) {
            _controller.reverse();
          }else {
            _controller.forward();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

/**
 *  1.Animation: 抽象类
 *    * 监听动画值的改变
 *    * 监听动画状态的改变
 *    * value
 *    * status
 *  2.AnimationController继承自Animation
 *    * vsync: 同步信号(this -> with SingleTickerProviderStateMixin)
 *    * forward(): 向前执行动画
 *    * reverse(): 反转执行动画
 *  3.CurvedAnimation:
 *    * 作用: 设置动画执行的速率(速度曲线)
 *  4.Tween: 设置动画执行的value范围
 *    * begin: 开始值
 *    * end: 结束值
 */