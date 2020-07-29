

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

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

class ZHomePage extends StatelessWidget {

  final GlobalKey<_ZHomeContentState> homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ZHomeContent(key: homeKey,),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gesture),
        onPressed: (){

          print(homeKey.currentState.message);
          print(homeKey.currentState.widget.name);
          homeKey.currentState.test();
        },
      ),
    );
  }
}

class ZHomeContent extends StatefulWidget {

  final String name = "name";

  ZHomeContent({Key key}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ZHomeContentState();
  }
}

class _ZHomeContentState extends State<ZHomeContent> {

  final String message = "123";

  void test() {
    print("test");
  }

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }


}
