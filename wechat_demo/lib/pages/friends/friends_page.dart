import 'package:flutter/material.dart';
import 'package:wechat_demo/const.dart';
import 'package:wechat_demo/pages/discover/discover_child_page.dart';

import 'friends_data.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  final List _headerData = [
    Friends(imageUrl: 'images/新的朋友.png', name: '新的朋友'),
    Friends(imageUrl: 'images/群聊.png', name: '群聊'),
    Friends(imageUrl: 'images/标签.png', name: '标签'),
    Friends(imageUrl: 'images/公众号.png', name: '公众号'),
  ];

  Widget _itemForRow(BuildContext context, int index) {
    if (index < _headerData.length) {
      Friends friend = _headerData[index];
      return _FriendsCell(name: friend.name, imageAssets: friend.imageUrl);
    } else {
      Friends friend = datas[index - _headerData.length];
      return _FriendsCell(
        name: friend.name,
        imageUrl: friend.imageUrl,
        groupTitle: friend.indexLetter,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("通讯录"),
        backgroundColor: WeChatThemeColor,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      DiscoverChildPage("添加朋友")));
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Image(
                image: AssetImage("images/icon_friends_add.png"),
                width: 25,
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _headerData.length + datas.length,
          itemBuilder: _itemForRow),
    );
  }
}

class _FriendsCell extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String groupTitle;
  final String imageAssets;

  const _FriendsCell(
      {Key key, this.imageUrl, this.name, this.groupTitle, this.imageAssets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: imageAssets != null
                            ? AssetImage(imageAssets)
                            : NetworkImage(imageUrl))),
              ),
              Container(margin: EdgeInsets.only(left: 10), child: Text(name))
            ],
          ),
        ),
        SizedBox(
          height: 1,
        )
      ],
    );
  }
}
