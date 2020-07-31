

import 'dart:math';

import 'package:FlutterLearn/day11/pages/image_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 16/9
          ),
          children: List.generate(20, (index) {
            final imageUrl = "https://picsum.photos/500/500?random=$index";
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (ctx, anim1, anim2) {
                    return FadeTransition(
                      opacity: anim1,
                      child: ZImageDetailPage(imageUrl),
                    );
                  }
                ));

              },
              child: Hero(
                tag: imageUrl,
                child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                ),
              ),
            );

          }),
        ),
      ),
    );
  }
}