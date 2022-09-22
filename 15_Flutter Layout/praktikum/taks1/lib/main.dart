import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("JSON ListView in Flutter"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Leanne Graham"),
              subtitle: Text("1-770-736-8031 x56442"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "L",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Ervin Howell"),
              subtitle: Text("010-692-6593 x09125"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "E",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Clementine Bauch"),
              subtitle: Text("1-463-123-4447"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "C",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Patricia Lebsack"),
              subtitle: Text("493-170-9623 x156"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "P",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Chelsey Dietrich"),
              subtitle: Text("(254)954-1289"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "C",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Mrs. Dennis Schulist"),
              subtitle: Text("1-477-935-8478 x6430"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "M",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Kurtis Weissnat"),
              subtitle: Text("210.067.6132"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "K",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Hernan Febri Rahmatullah"),
              subtitle: Text("01823981624"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "A",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Juliana Amazing"),
              subtitle: Text("31-142-5135"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "J",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Pedro Escobar"),
              subtitle: Text("51-152-1535"),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "P",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
