import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectapk/screens/pendonor.dart';
import 'package:miniprojectapk/screens/penerima_donor.dart';
import 'package:miniprojectapk/screens/profile.dart';
import 'package:miniprojectapk/screens/requirement.dart';
import 'package:miniprojectapk/screens/signin_screen.dart';

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
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Profile()));
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
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Requirement()));
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Container(
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(183, 177, 0, 0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Pendonor',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
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
                            parent: animation, curve: Curves.easeInOutQuad);

                        return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child);
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation) {
                        return Pendonor();
                      },
                    ),
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Pendonor()),
                  // );
                },
              ),
              ListTile(
                title: Container(
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(183, 177, 0, 0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Penerima Donor',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
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
                            parent: animation, curve: Curves.easeInOutQuad);

                        return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child);
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation) {
                        return Requestblood();
                      },
                    ),
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Requestblood()),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
