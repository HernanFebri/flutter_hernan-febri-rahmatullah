import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectapk/screens/home/component/body.dart';
import 'package:miniprojectapk/screens/profile/profile_screen.dart';
import 'package:miniprojectapk/screens/reqruirement/requirement_screen.dart';
import 'package:miniprojectapk/screens/signin/signin_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 246, 0, 20),
        image: DecorationImage(
          image: AssetImage("assets/images/home.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          centerTitle: true,
          title: const Text(
            'Dashboard',
          ),
          backgroundColor: const Color.fromARGB(255, 240, 0, 33),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 240, 0, 33)),
                accountName: const Text(
                  "Hernan Febri",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  FirebaseAuth.instance.currentUser!.email!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    )),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                ),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(seconds: 10),
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation,
                          Widget child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.easeInOut);

                        return SlideTransition(
                            position: Tween(
                                    begin: const Offset(1.0, 0.0),
                                    end: const Offset(0.0, 0.0))
                                .animate(animation),
                            child: child);
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation) {
                        return Profile();
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.question_mark,
                ),
                title: const Text('Persyaratan Pendonor'),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(seconds: 10),
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation,
                          Widget child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.easeInOut);

                        return SlideTransition(
                            position: Tween(
                                    begin: const Offset(1.0, 0.0),
                                    end: const Offset(0.0, 0.0))
                                .animate(animation),
                            child: child);
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation) {
                        return Requirement();
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                ),
                title: const Text('Logout'),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Body(),
      ),
    );
  }
}
