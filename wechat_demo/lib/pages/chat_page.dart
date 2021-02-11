import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wechat_demo/const.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with AutomaticKeepAliveClientMixin {
  List<Chat> _dataList = [];
  Future<List<Chat>> getDatas() async {
    // http
    //     .get("http://rap2api.taobao.org/app/mock/277419/api/chat/list")
    //     .then((value) {
    //   print(value.statusCode);
    // });
    final response = await http
        .get("http://rap2api.taobao.org/app/mock/277419/api/chat/list");
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<Chat> chatList = responseBody["chat_list"]
          .map<Chat>((item) => Chat.fromJson(item))
          .toList();
      return chatList;
    } else {
      throw Exception("statusCode: ${response.statusCode}");
    }
  }

  @override
  void initState() {
    super.initState();

    final chat = {"name": "张三", "message": "吃了吗？"};

    /// map转json
    final chatJson = json.encode(chat);
    print(chatJson);
    print(chat);

    /// json转map
    final chatMap = json.decode(chatJson);
    print(chatMap is Map);

    final chatModel = Chat.fromJson(chatMap);
    print(chatModel.name);
    getDatas().then((value) {
      setState(() {
        _dataList = value;
      });
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("微信页面"),
          backgroundColor: WeChatThemeColor,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: PopupMenuButton(
                offset: Offset(0, 60),
                child: Image(
                  image: AssetImage("images/圆加.png"),
                  width: 25,
                ),
                itemBuilder: (BuildContext context) {
                  return [
                    buildPopupMenuItem("images/发起群聊.png", "发起群聊"),
                    buildPopupMenuItem("images/添加朋友.png", "添加朋友"),
                    buildPopupMenuItem("images/扫一扫1.png", "扫一扫"),
                    buildPopupMenuItem("images/收付款.png", "收付款"),
                  ];
                },
              ),
            )
          ],
        ),
        body: Container(
          child: _dataList.length == 0
              ? Center(child: Text("LOADING"))
              : ListView.builder(
                  itemCount: _dataList.length,
                  itemBuilder: (BuildContext context, int index) {
                    Chat item = _dataList[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Container(
                        height: 20,
                        child: Text(item.message),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(item.imageUrl),
                      ),
                    );
                  }),
        ));
  }

  PopupMenuItem buildPopupMenuItem(String imageAss, String title) {
    return PopupMenuItem(
        child: Row(
      children: [
        Image(
          image: AssetImage(imageAss),
          width: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ));
  }
}

class Chat {
  final String name;
  final String message;
  final String imageUrl;

  const Chat({this.name, this.message, this.imageUrl});

  factory Chat.fromJson(Map map) {
    return Chat(
        name: map["name"], message: map["message"], imageUrl: map["imageUrl"]);
  }
}

/*
* FutureBuilder(
          future: getDatas(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: Text("Loading..."));
            }
            return ListView(
              children: snapshot.data.map<Widget>((item) {
                return ListTile(
                  title: Text(item.name),
                  subtitle: Container(
                    height: 20,
                    child: Text(item.message),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(item.imageUrl),
                  ),
                );
              }).toList(),
            );
          },
        ),
* */
