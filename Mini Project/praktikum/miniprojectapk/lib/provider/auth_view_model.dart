import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthViewModel extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> get statuslogin => auth.authStateChanges();
  void SignIn(String email, password) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {})
        .onError((error, stackTrace) {
      print("Error ${error.toString()}");
    });
  }
}
