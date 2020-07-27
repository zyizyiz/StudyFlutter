
import 'package:flutter/material.dart';

class ZBottomBarItem extends BottomNavigationBarItem {

  ZBottomBarItem(String iconName, String title)
  : super(
    title: Text(title),
    icon: Image.asset("assets/images/tabbar/$iconName.png", width: 32,gaplessPlayback: true),
    activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 32,gaplessPlayback: true),
  );
}
