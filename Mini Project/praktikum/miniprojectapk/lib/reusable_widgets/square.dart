import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;

  const MySquare({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        color: Color.fromARGB(165, 244, 54, 54),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Center(
              child: Text(
                child,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
