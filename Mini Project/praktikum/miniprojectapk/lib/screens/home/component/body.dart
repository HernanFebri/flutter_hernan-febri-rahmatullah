import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectapk/screens/pendonor/pendonor_screen.dart';
import 'package:miniprojectapk/screens/penerima%20donor/penerima_donor_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
