import 'package:FlutterLearn/douban/pages/main/initialize_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ZMainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ZMainPageState();
  }
}

class _ZMainPageState extends State<ZMainPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}