import 'package:flutter/material.dart';
import 'package:taskweekly03/models/user_model.dart';

class UserProvider with ChangeNotifier {
  final List<UserModel> _user = [];
  List<UserModel> get contacts => _user;

  void add(UserModel user) {
    _user.add(user);
    notifyListeners();
  }
}
