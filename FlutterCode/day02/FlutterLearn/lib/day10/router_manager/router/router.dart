import 'package:FlutterLearn/day10/router_manager/about.dart';
import 'package:FlutterLearn/day10/router_manager/detail.dart';
import 'package:FlutterLearn/day10/router_manager/main.dart';
import 'package:FlutterLearn/day10/router_manager/unknown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZRouter {
  static final Map<String, WidgetBuilder> routers = {
    ZHomePage.routerName : (ctx) => ZHomePage(),
    ZAboutPage.routerName : (ctx) => ZAboutPage(),
    ZDetailPage.routerName : (ctx) => ZDetailPage(),
  };

  static final String initialRoute = ZHomePage.routerName;

  static final RouteFactory generateRoute = (settings) {
    if (settings.name == ZDetailPage.routerName) {
      return MaterialPageRoute(
        builder: (ctx) {
          return ZDetailPage(message: settings.arguments);
        }
      );
    }
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {

    return MaterialPageRoute(
      builder: (ctx) {
        return ZUnknownPage();
      }
    );
  };

}