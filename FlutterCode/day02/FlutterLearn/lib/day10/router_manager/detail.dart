import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZDetailPage extends StatefulWidget {

  static const String routerName = "/detail";

  String _message;

  ZDetailPage({String message}) : this._message = message ?? "";

  @override
  _ZDetailPageState createState() => _ZDetailPageState();
}

class _ZDetailPageState extends State<ZDetailPage> {
  @override
  Widget build(BuildContext context) {

    if (widget._message.isEmpty) {
      widget._message = ModalRoute.of(context).settings.arguments as String;
    }


    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text("详情页"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget._message, style: TextStyle(fontSize: 20),),
                RaisedButton(
                  child: Text("回到首页"),
                  onPressed: () => _backToHome(context),
                ),
              ],
            ),
          ),
        ),
        onWillPop: () {
          _backToHome(context);
          return Future.value(false);
        });
  }

  void _backToHome(BuildContext context) {
    Navigator.of(context).pop("a detail message");
  }
}