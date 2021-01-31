import 'package:flutter/material.dart';
import 'package:wechat_demo/pages/chat_page.dart';
import 'package:wechat_demo/pages/discover/discover_page.dart';
import 'package:wechat_demo/pages/friends_page.dart';
import 'package:wechat_demo/pages/mine_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 2;
  List<Widget> _pages = [ChatPage(), FriendsPage(), DiscoverPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: 12,
        currentIndex: _currentIndex,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/tabbar_chat.png",
              height: 20,
              width: 20,
            ),
            activeIcon: Image.asset(
              "images/tabbar_chat_hl.png",
              height: 20,
              width: 20,
            ),
            label: "微信",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "通讯录",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "发现",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "我的",
          )
        ],
      ),
    );
  }
}
