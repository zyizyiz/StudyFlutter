
import 'package:FlutterLearn/day09/model/user_info.dart';
import 'package:flutter/cupertino.dart';

class ZUserViewModel extends ChangeNotifier {
  UserInfo _user;

  ZUserViewModel(this._user);

  UserInfo get user => _user;

  set user(UserInfo value) {
    _user = value;
    notifyListeners();
  }
}