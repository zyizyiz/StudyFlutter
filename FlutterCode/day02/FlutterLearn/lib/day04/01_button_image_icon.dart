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
      body: Column(
        children: <Widget>[
          IconExtensionDemo(),
          SizedBox(height: 8,),
          ImageExtensionDemo(imageURL:"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3984473917,238095211&fm=26&gp=0.jpg"),
          SizedBox(height: 8,),
          ButtonExtensionDemo(),

        ],
      ),
    );
  }
}

class IconExtensionDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("\ue91d",
      style: TextStyle(
          fontSize: 15,
          fontFamily: "MaterialIcons"
      ),

    );
  }
}

class ImageExtensionDemo extends StatelessWidget {
  const ImageExtensionDemo({
    Key key,
    @required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FadeInImage(
      fadeOutDuration: Duration(milliseconds: 1),
      fadeInDuration: Duration(milliseconds: 1),
      placeholder: AssetImage("assets/images/juren.jpeg"),
      image: NetworkImage(imageURL),
    );
  }
}

class ButtonExtensionDemo extends StatelessWidget {
  const ButtonExtensionDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonTheme(
          minWidth: 30,
          height: 10,
          child: FlatButton(
            padding: EdgeInsets.all(6),
            color: Colors.red,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Text("Flat Button"),
            textColor: Colors.white,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}