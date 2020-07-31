import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZImageDetailPage extends StatelessWidget {

  final String _imageUrl;

  ZImageDetailPage(this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Hero(
            tag: _imageUrl,
            child: Image.network(_imageUrl),
          ),
        ),
      ),
    );
  }
}