import 'package:flutter/cupertino.dart';

class UserModel extends ChangeNotifier {
  String userName = '';
  String userEmail = '';
  String userNumber = '';
  String userPassword = '';

  // ignore: non_constant_identifier_names
  void UserModelRegister(String nameText, String emailText, String numberText,
      String passwordText) {
    userName = nameText;
    userEmail = emailText;
    userNumber = numberText;
    userPassword = passwordText;
    notifyListeners();
  }
}
