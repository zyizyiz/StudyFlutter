import 'package:flutter/material.dart';

import 'discover_child_page.dart';

class DiscoverCell extends StatefulWidget {
  final String title;

  final String subTitle;

  final String imageName;

  final String subImageName;

  DiscoverCell({this.title, this.subTitle, this.imageName, this.subImageName});

  @override
  _DiscoverCellState createState() => _DiscoverCellState();
}

class _DiscoverCellState extends State<DiscoverCell> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>
                DiscoverChildPage(widget.title)));

        setState(() {
          _backgroundColor = Colors.white;
        });
      },
      onTapDown: (TapDownDetails details) {
        setState(() {
          _backgroundColor = Colors.grey;
        });
      },
      onTapCancel: () {
        setState(() {
          _backgroundColor = Colors.white;
        });
      },
      child: Container(
        color: _backgroundColor,
        height: 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 左边
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(widget.imageName),
                    width: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(widget.title)
                ],
              ),
            ),
            // 右边
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  widget.subTitle != null ? Text(widget.subTitle) : Text(""),
                  widget.subImageName != null
                      ? Image(
                          image: AssetImage(widget.subImageName),
                          width: 15,
                        )
                      : Container(),
                  Image(
                    image: AssetImage("images/icon_right.png"),
                    width: 15,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
