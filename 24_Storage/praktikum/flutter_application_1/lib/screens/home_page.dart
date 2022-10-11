import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    required this.user,
  });
  UserModel user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences logindata;
  // String userName = '';
  // String userEmail = '';

  @override
  void initState() {
    super.initState();
    Initial();
  }

  // ignore: non_constant_identifier_names
  void Initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      widget.user.userName = logindata.getString('username').toString();
      widget.user.userEmail = logindata.getString('email').toString();
      widget.user.userNumber = logindata.getString('number').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserModel>(builder: (context, userModel, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome'),
              const SizedBox(
                height: 5,
              ),
              Text(widget.user.userName),
              const SizedBox(
                height: 5,
              ),
              Text(widget.user.userEmail),
              const SizedBox(
                height: 5,
              ),
              Text(widget.user.userNumber),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    logindata.setBool('login', true);
                    logindata.remove('username');
                    logindata.remove('email');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text('Log Out'))
            ],
          ),
        ),
      );
    });
  }
}
