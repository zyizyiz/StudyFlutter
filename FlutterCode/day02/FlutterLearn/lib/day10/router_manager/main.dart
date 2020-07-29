
import 'package:FlutterLearn/day10/router_manager/about.dart';
import 'package:FlutterLearn/day10/router_manager/detail.dart';
import 'package:FlutterLearn/day10/router_manager/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent
      ),
      routes: ZRouter.routers,
      initialRoute: ZRouter.initialRoute,
      onUnknownRoute: ZRouter.unknownRoute,
    );
  }
}

class ZHomePage extends StatefulWidget {
  static const String routerName = "/";

  @override
  State<StatefulWidget> createState() {
    return _ZHomePageState();
  }
}

class _ZHomePageState extends State<ZHomePage> {

  String _homeMessage = "defalut message";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_homeMessage, style: TextStyle(fontSize: 20),),
            RaisedButton(
              child: Text("跳转到详情"),
              onPressed: () => _jumpToDetail(context),
            ),
            RaisedButton(
              child: Text("跳转到关于"),
              onPressed: () => _jumpToAbout(context),
            ),
            RaisedButton(
              child: Text("跳转到详情2"),
              onPressed: () => _jumpToDetail2(context),
            ),
            RaisedButton(
              child: Text("跳转到设置"),
              onPressed: () => _jumpToSettings(context),
            ),
          ],
        ),
      ),
    );
  }

  void _jumpToDetail(BuildContext context) {
    Future result = Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (ctx) {
        return ZDetailPage(message: "a home message");
      }
    ));
    result.then((value) {
      setState(() {
        _homeMessage = value;
      });
    });
  }

  void _jumpToAbout(BuildContext context) {
    Navigator.of(context).pushNamed(ZAboutPage.routerName, arguments: "a home details message");
  }

  void _jumpToDetail2(BuildContext context) {
    Navigator.of(context).pushNamed(ZDetailPage.routerName, arguments: "a home details message 222");
  }

  void _jumpToSettings(BuildContext context) {
    Navigator.of(context).pushNamed("/aaaaa");
  }
}