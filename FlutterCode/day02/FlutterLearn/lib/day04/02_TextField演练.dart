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
          TextFieldDemo(),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatelessWidget {

  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: ThemeData(
          primaryColor: Colors.red
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: usernameTextEditController,
              decoration: InputDecoration(
                labelText: "username",
                icon: Icon(Icons.people),
                hintText: "请输入用户名",
                border: InputBorder.none,
                filled: true,
//                fillColor: Colors.red[100]
              ),
              onChanged: (value) {
                print("onChange:$value");
              },
              onSubmitted: (value) {
                print("onSubmitted:$value");
              },
            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordTextEditController,
              decoration: InputDecoration(
                  labelText: "password",
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 40,
              child: FlatButton(
                child: Text("登 录"),
                color: Colors.blue,
                onPressed: () {
                  final username = usernameTextEditController.text;
                  final password = passwordTextEditController.text;
                  print("账号：$username 密码：$password");
                  usernameTextEditController.text = "";
                  passwordTextEditController.text = "";
                },
              ),

            )
          ],
        ),
      ),
    );
  }
}