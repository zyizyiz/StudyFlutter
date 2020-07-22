import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: YZHomePage(),
    );
  }
}

class YZHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: YZContentBody(),
    );
  }
}

class YZContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        YZHomeProductItem("Apple1", "Macbook1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 6,),
        YZHomeProductItem("Apple2", "Macbook2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
        SizedBox(height: 6,),
        YZHomeProductItem("Apple3", "Macbook2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
      ],
    );
  }
}

class YZHomeProductItem extends StatelessWidget {

  final String title;

  final String desc;

  final String imageUrl;

  YZHomeProductItem(this.title,this.desc,this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Colors.red,
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            desc,
            style: TextStyle(
              fontSize: 13,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 8),
          Image.network(imageUrl,width: 300),
        ],
      ),
    );
  }
}
