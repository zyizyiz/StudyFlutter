import 'package:FlutterLearn/douban/pages/home/ZHomePage.dart';
import 'package:FlutterLearn/douban/pages/subject/ZSubjectPage.dart';
import 'package:flutter/cupertino.dart';

import './ZBottomBarItem.dart';

List<ZBottomBarItem> items = [
  ZBottomBarItem("home","首页"),
  ZBottomBarItem("subject","书影音"),
];

List<Widget> pages = [
  ZHomePage(),
  ZSubjectPage(),

];