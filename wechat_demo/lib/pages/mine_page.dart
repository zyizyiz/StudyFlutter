import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wechat_demo/pages/discover/discover_cell.dart';

import '../const.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  Widget headerWidget() {
    return Container(
      color: Colors.white,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(top: 100, bottom: 20),
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                      image: AssetImage("images/Hank.png"), fit: BoxFit.cover)),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 70,
              padding: EdgeInsets.only(left: 20, top: 5, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hank",
                    style: TextStyle(fontSize: 25),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "微信号：123123",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Image(
                        image: AssetImage("images/icon_right.png"),
                        width: 15,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: WeChatThemeColor,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: [
                  headerWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  DiscoverCell(
                    imageName: "images/微信 支付.png",
                    title: "支付",
                  ),
                  DiscoverCell(
                    imageName: "images/微信收藏.png",
                    title: "收藏",
                  ),
                  DiscoverCell(
                    imageName: "images/微信相册.png",
                    title: "相册",
                  ),
                  DiscoverCell(
                    imageName: "images/微信卡包.png",
                    title: "卡包",
                  ),
                  DiscoverCell(
                    imageName: "images/微信表情.png",
                    title: "表情",
                  ),
                  DiscoverCell(
                    imageName: "images/微信设置.png",
                    title: "设置",
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 25,
            color: Color.fromRGBO(0, 0, 0, 0),
            margin: EdgeInsets.only(top: 40, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image(image: AssetImage("images/相机.png"))],
            ),
          )
        ],
      ),
    );
  }
}
