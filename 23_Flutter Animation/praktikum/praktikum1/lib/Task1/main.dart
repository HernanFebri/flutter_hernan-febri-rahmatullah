import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: Center(
          child: InkWell(
        onTap: () {
          setState(() {
            isBig = !isBig;
          });
        },
        child: AnimatedContainer(
          width: isBig ? 200 : 100,
          height: isBig ? 200 : 100,
          duration: const Duration(milliseconds: 300),
          child: Image.network(
              'https://www.teknorizen.com/wp-content/uploads/2020/12/foto-dino-kuning-tiktok-14-1024x1011.png'),
        ),
      )),
    );
  }
}
